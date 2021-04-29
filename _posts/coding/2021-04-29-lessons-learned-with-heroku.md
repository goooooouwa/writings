---
published: true
title: 使用Heroku部署遇到的一些问题的总结
category: coding
---
我在使用Heroku scheduler来定时执行python脚本时遇到的几个问题：
1. Worker dyno完成job正常退出后还会不断的自动运行
1. Heroku scheduler计划的任务不执行
1. Heroku run任何command都没有相应，包括bash

我使用的是Container stack，并且通过`heroku.yml`让Heroku构建docker image。

我起初的`heroku.yml`如下：

```yml
build:
  docker:
    worker: Dockerfile
run:
  worker: python3 src/news2kindle.py
```

以下是我找到这些问题原因的过程。

### 问题1: Worker dyno完成job正常退出后还会不断的自动运行

再设置了Heroku scheduler来定时执行python脚本后，我一度以为我的定时任务成功被执行了。但是后来发现似乎是我的worker在不断自动运行，而不是定时任务。

在思考和推测各种可能原因后，我注意到官方文档上有这样一段内容：

Dyno crash restart policy

A dyno “crash” represents any event originating with the process running in the dyno that causes the dyno to stop. That includes the process exiting with an exit code of 0 (or any other exit code).

[source](https://devcenter.heroku.com/articles/dynos#dyno-crash-restart-policy)

原来dyno只停止运行了，哪怕是正常退出（exit code是0），heroku的Dyno crash restart policy也会重新启动dyno。这包括web dyno和worker dyno。所以worker dyno其实是需要常驻后台的，它应该负责调度其他进程去处理后台任务。

然后我注意到文档中提到一种不会被自动重启的dyno，即one-off dyno。

This policy only effects dyno formation, including web and worker dynos. One-off dynos, on the other hand, are only expected to run a short-lived command and then exit, not affecting your dyno formation.

[source](https://devcenter.heroku.com/articles/dynos#dyno-configurations)

即使one-off dyno意外退出也不会被重启。

One-off dynos never automatically restart, whether the process ends on its own or whether you manually disconnect.

[source](https://devcenter.heroku.com/articles/one-off-dynos#formation-dynos-vs-one-off-dynos)

所以，到底什么是one-off dyno呢？

官方文档的解释是：

One-off dynos are created using heroku run, such as `heroku run bash`. You don't need to specifiy anything more this just run the command.

[source](https://devcenter.heroku.com/articles/one-off-dynos#formation-dynos-vs-one-off-dynos)

所以，为了让Heroku scheduler定时执行我的python脚本，我需要将它作为一个one-off dyno。可是转念一想，我通过Heroku scheduler设置的已经是one-off dyno了呀，可为什么没有执行呢？

### 问题二：Heroku scheduler计划的任务不执行

在思考和推测各种可能原因后，我注意到官方文档上的这段话：

If you are using Heroku Scheduler and Container Registry as your deployment method, your task must be accessible from the web image. There is no way to specify a non-web image for task execution.

有没有可能是因为我的image只指定了一个worker类型，而且是通过container运行的，所以Heroku Scheduler无法运行我指定的任何任务？

### 问题三：Heroku run任何command都没有相应，包括bash

想到这里也让我联想起一直困扰我的另一个问题：我无法通过`heroku run`运行任何命令。也许它们都是因为我使用了container stack，但我只有一个worker类型的image。由于Heorku的技术限制，导致无法通过`heroku run`和Heroku scheduler运行任何命令。

我决定尝试一下将我的image改为web类型。

不过这将意味着我需要一个常驻的进程，否则Heroku的crash restart policy又会反复重启我的python脚本。我想到了也许可以运行python自带的http server来作为web dyno。

于是我试着将我的docker image指定为web类型，并且运行python的http server。

(以下脚本存在错误，错误原因请见下文)
```yml
build:
  docker:
    web: Dockerfile
run:
  web: python3 -m http.server
```

#### 小插曲

部署后我又遇到一个小问题，Heroku报错说web worker没有监听$PORT端口。

我又找到了官方文档的解释：

If the dyno is a web dyno, the $PORT variable will be set. The dyno must bind to this port number to receive incoming requests.

[source](https://devcenter.heroku.com/articles/dynos#local-environment-variables)

所以我得想办法让我的http server将端口绑定到这个环境变量。而我的http server是通过bash运行的，我该如何获得这个环境变量呢？我想来想去，终于想清楚了，其实可以直接通过bash使用$PORT环境变量。

```yml
  web: python3 -m http.server $PORT
```

我又提交了代码，这回部署成功了，而且竟然可以正常使用http server访问当前目录（我还担心Heroku会有某些权限限制），这也带来了一个bouns，即我可以查看我使用的feeds.txt内容。

成功部署web server后，我试着用`heroku run`运行了一个简单的bash命令，真的成功了！这下也终于可以使用`heroku run`来运行命令了。再后来我设置的定时任务也正常执行了。

一切都如当初设想的一样正常运行了，finally.

## 总结

稍微一点总结就是，Heroku有自己设定的process model，我们在heroku上运行应用时需要遵循它的模型。

另外说句题外话，Heroku的免费dyno的500M内存限额无法用来进行intensive一点的任务。我用它运行的`news2kindle.py`脚本，因为需要使用pandoc将rss feeds生成epub文档，然后通过calibre将格式转换为mobi，通常一个20篇文章左右的任务就可能超过这个限额。

## 参考

1. https://devcenter.heroku.com/articles/one-off-dynos#an-example-one-off-dyno
1. https://devcenter.heroku.com/articles/dynos#dyno-crash-restart-policy
1. https://devcenter.heroku.com/articles/scheduler#known-issues-and-alternatives
