---
published: true
title: How to use news2kindle
category: productivity
tags: rss kindle reddit google-news news2kindle
---
## Background

I want to browse Reddit posts and Google News with my Kindle oasis, so that I don't get distracted too much and easier for my eyes.



## Tools selection

With some Google search, I mainly found 3 tools:

- [Feeder](https://www.feeder.mobi/)
- [news2kindle](https://github.com/anteprandium/news2kindle)
- [kindlepush](https://github.com/zhengchun/kindlepush)

I tried Feeder and immediately found it's broken, so pass. Finally I chose to go with news2kindle.



### Why choose news2kindle over kindlepush?

news2kindle is only a simple python script, so it's universally accessible, while KindlePush only supports Windows and Linux. I noticed KindlePush is made by Chinese, so will keep as a send option.



## How to use news2kindle locally

### Prerequsite

- Docker (run with container) or Python (run locally)



### Installation

```sh
docker build -t news2kindle .
```



### Configuration

1. Add RSS to feeds.txt (note: The modification date of `feeds.txt` will be the starting date from which news are downloaded.)

2. Enable IMAP in Gmail settings

3. Get an app password for Gmail

4. Test SMTP configuration https://www.gmass.co/smtp-test

5. Config environment variables with a `.env` file in project root folder as such:


```
EMAIL_SMTP=smtp.gmail.com
EMAIL_SMTP_PORT=465
EMAIL_USER=[your gmail address]
EMAIL_PASSWORD=[your gmail app password]
EMAIL_FROM=[your gmail address]
KINDLE_EMAIL=[your kindle device address (remember to add your send email to Amazon trust emails.)]
```



### Run

```sh
docker run --env-file .env news2kindle
```

## How to Deploy news2kindle to heroku

### Prerequsite

- Heroku CLI

### Steps

1. create a heroku app
1. set stack to container  
  `heroku stack:set container --app app_name`
1. config environment variables in Config Vars
1. deploy code or docker image to heroku (see: 3 ways to deploy to heroku)
1. scale up the worker dyno  
  `heroku ps:scale worker=1`

### 3 ways to deploy to heroku

1. Heroku Git  
  push code to heroku repo
1. GitHub  
  Automatic deploys triggered by code push to Github repo
1. Container Registry  
  Build the Dockerfile locally and push the Docker image to heroku.

### Build Docker images on Heroku

To build Docker images on Heroku, instead of building the image locally, you can specify that with a heroku.yml file.

```yml
build:
  docker:
    worker: Dockerfile
```

### Troubleshooting

#### Issue: feeds list not updated

Since the config is copied to the image when build, if you edit the feeds.txt or anything in the `config` folder, you need to rebuild the image.


#### Error type: environment value is not set correctly

Error message:

```python
File "/usr/local/lib/python3.8/smtplib.py", line 645, in auth
    authobject(challenge).encode('ascii'), eol='')
AttributeError: 'NoneType' object has no attribute 'encode'
```

Example root cause: email password environment spelled wrong, should be `EMAIL_PASSWORD`, I used `EMAIL_PASSWD` from the code instead.



#### Error type: SSL port is incorrect

Error message:

```python
File "/usr/local/lib/python3.8/ssl.py", line 1309, in do_handshake
    self._sslobj.do_handshake()
ssl.SSLError: [SSL: WRONG_VERSION_NUMBER] wrong version number (_ssl.c:1125)
```

Example root cause: SSL port for Gmail SMTP is `465`, don't put `25` or `587`, etc.

#### no worker log in Heroku

root cause: worker dyno is not running.

you need to manually scale up the worker dyno to let the process actually run!

Make sure the worker dyno is on:

![](https://i.imgur.com/vr1HpVc.png)

Then you can see the worker is running and generating logs.

![](https://i.imgur.com/eFlT8s5.png)

## Next steps

1. [ ] Fine tune RSS feeds for blogs, Google News, Reddit.
2. [ ] fetch full article for each Google News rss feed or setup shadowsocks proxy for kindle
3. [x] runs it up on a server
