# docker-compose.yml

[![CI](https://github.com/gabrielrufino/docker-compose.yml/actions/workflows/ci.yml/badge.svg)](https://github.com/gabrielrufino/docker-compose.yml/actions/workflows/ci.yml)

My docker development environment

## Installing

0. Requirements

* git
* docker
* docker-compose

1. Clone repository

```bash
git clone https://github.com/gabrielrufino/docker-compose.yml "[Folder name]"
```

## Updating

0. Get in the folder

```bash
cd "[Folder name]"
```

1. Pull the updates

```bash
git pull
```

## Services

### Appsmith

Service with Appsmith.

```bash
docker-compose up -d appsmith
```

### Arch Linux

Service with Arch Linux

```bash
docker-compose up -d archlinux
```

### Debian

Service with Debian.

```bash
docker-compose up -d debian
```

### Fedora

Service with Fedora

```bash
docker-compose up -d fedora
```

### Gitea

Service with Gitea.

```bash
docker-compose up -d gitea
```

### Grafana

Service with Grafana.

```bash
docker-compose up -d grafana
```

### Kali

Service with Kali.

```bash
docker-compose up -d kali
```

#### Installing kali tools

```bash
apt update && apt -y install kali-linux-headless
```

### Matomo

Service with Matomo

```bash
docker-compose up -d matomo
```

### Metabase

Service with Metabase.

```bash
docker-compose up -d metabase
```

### Mongo

Service with MongoDB server.

```bash
$ docker-compose up -d mongo
```

**User:** root<br />
**Password:** root

Getting in the container bash:
```bash
$ docker-compose exec mongo /bin/bash
```

Getting in the mongo shell:
```bash
$ docker-compose exec mongo mongo -u root -p root
```

#### Volume

`./volumes/mongo` => `/home/shared`

### MySQL

Service with MySQL Server.

```bash
$ docker-compose up -d mysql
```

Getting in the container bash:
```bash
$ docker-compose exec mongo /bin/bash
```

#### Volume

`./volumes/mysql` => `/home/shared`

### Nextcloud

Service with Nextcloud.

```
docker-compose up -d nextcloud
```

### OpenVSCode

Service with OpenVSCode.

```bash
$ docker-compose up -d openvscode
```

**Port:** 3003

### pgAdmin4

Service with pgAdmin4 interface.

```bash
$ docker-compose up -d phpmyadmin
```

### phpMyAdmin

Service with phpMyAdmin interface.

```bash
$ docker-compose up -d phpmyadmin
```

### Portainer

Service with Portainer

```bash
docker-compose up -d portainer
```

### Postgres SQL

Service with Postgres SQL

```bash
$ docker-compose up -d postgres
```

### Prometheus

Service with Prometheus

```bash
docker-compose up -d prometheus
```

### RabbitMQ

Service with rabbitmq

```bash
docker-compose up -d rabbitmq
```

### Redis

Redis service

```bash
docker-compose up -d redis
```

### RedisInsight

Redis service

```bash
docker-compose up -d redisinsight
```

### RethinkDB

Service with RethinkDB

```bash
$ docker-compose up -d rethinkdb
```

#### Volume

`./volumes/rethinkdb` => `/home/shared`

### Sonic

Sonic service

```bash
$ docker-compose up -d sonic
```

### SQL Server

Service with Microsoft SQL Server

```bash
$ docker-compose up -d sqlserver
```

### Strapi

Service with Strapi

```bash
$ docker-compose up -d strapi
```

#### Volume

`./volumes/strapi` => `/srv/app`

### Ubuntu

Service running Ubuntu.

```bash
$ docker-compose up -d ubuntu
```

Getting in the container bash:
```bash
$ docker-compose exec ubuntu /bin/bash
```

#### Volume

`./volumes/ubuntu` => `/home/shared`

### Verdaccio

Service running Verdaccio.

```bash
$ docker-compose up -d verdaccio
```

* [Certbot](./docs/certbot.md)
* [Nginx](./docs/nginx.md)

#### Volumes

`./verdaccio/storage` => `/verdaccio/storage`
`./verdaccio/config`  => `/verdaccio/conf`
`./verdaccio/plugins` => `/verdaccio/plugins`

## Volumes

Some of the services has a volume in `./volumes/[service]`.
