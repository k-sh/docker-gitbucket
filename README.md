# docker-gitbucket
Docker service for gitbucket on CentOS

## Dependencies
### docker-compose
Install docker-compose from [docker/compose](https://github.com/docker/compose/releases)

Example
```shell-session
# curl -L https://github.com/docker/compose/releases/download/1.11.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
# chmod +x /usr/local/bin/docker-compose
```

## How to use
+ Download this repository

```shell-session
# git clone https://github.com/k-sh/docker-gitbucket
```

+ Build this image

```shell-session
# cd docker-gitbucket
# docker-compose build
```

+ Start this service

```shell-session
# docker-compose up -d
```
