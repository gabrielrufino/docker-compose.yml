# docker-compose.yml

[![CI](https://github.com/gabrielrufino/docker-compose.yml/actions/workflows/ci.yml/badge.svg)](https://github.com/gabrielrufino/docker-compose.yml/actions/workflows/ci.yml)

Services environment for development and production

## Installing

0. Requirements

* git
* docker

1. Clone repository

```sh
git clone https://github.com/gabrielrufino/docker-compose.yml "[Folder name]"
```

## Updating

0. Get in the folder

```sh
cd "[Folder name]"
```

1. Pull the updates

```sh
git pull
```

## Commands

### List services

```sh
docker compose config --services | sort
```

### List variables

```sh
docker compose config --variables | { read line; echo "$line"; tail -n +1 | sort; }
```
