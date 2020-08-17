---
date: 2015-11-10
title: How to monitor Redis in Docker
category: linux
---
# How to monitor Redis in Docker

```
docker run -it --link some-redis:redis --rm redis sh -c 'exec redis-cli -h "$REDIS_PORT_6379_TCP_ADDR" -p "$REDIS_PORT_6379_TCP_PORT"'
```

