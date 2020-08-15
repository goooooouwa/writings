---
---
# Capybara 测试机制分析

Capybara 测试代码（跑在Ruby process），起了Rails服务器代码（跑在capybara同一个Ruby process的另一个thread），连接着poltergeist driver代码（跟Capybara测试代码运行在同一个thread）；

Poltergeist向phantomjs（跑在另一个node.js JavaScript process）网络请求；

Phantomjs（无头浏览器）处理接收到的网络请求（向Rails服务器发送网络请求）；

所以一共是2个进程（其中一个有2两个线程）相互通信。测试线程与phantomjs进程通过websocket通信，phantomjs进程与rails线程通过HTTP通信。