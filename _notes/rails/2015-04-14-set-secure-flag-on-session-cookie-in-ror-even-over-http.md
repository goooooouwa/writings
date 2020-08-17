---
date: 2015-04-14
title: Set secure flag on session cookie in RoR even over HTTP
category: rails
---
# Set "secure" flag on session cookie in RoR even over HTTP

Secure cookies are not sent over non-secure connections by definition.

Terminating SSL upstream is quite common, but you need to pass certain header fields through so that Rails knows and can do the right thing.

[Here's a document](http://www.cyberciti.biz/faq/howto-linux-unix-setup-nginx-ssl-proxy/) that explains the configuration in pretty good detail for nginx. Search for "Set headers" to jump to the section describing the specific headers you need to pass through.

There are security considerations using this configuration, e.g., if the device terminating SSL is not on the same secure LAN as the Rails host, then you have a vulnerability.
