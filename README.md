# docker-gitbucket
Docker service for gitbucket on CentOS

## Dependencies
### docker-compose
Install docker-compose from [docker/compose](https://github.com/docker/compose/releases)

Example
    curl -L https://github.com/docker/compose/releases/download/1.11.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose

## How to use
+ Download this repository

    cd /opt/
    git clone https://github.com/k-sh/docker-gitbucket

+ Build this image

    cd /opt/docker-gitbucket
    docker-compose build

+ Register this service in systemd and start service

    cp /opt/docker-gitbucket/gitbucket.service /usr/lib/systemd/system/gitbucket.service
    systemctl deamon-reload
    systemctl enable gitbucket
    systemctl start gitbucket

