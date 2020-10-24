# docker-compose.yml

My docker development environment

## Services

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

### Mongo Express

Service with Mongo Express interface.

```
$ docker-compose up -d mongo-express
```

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

### phpMyAdmin

Service with phpMyAdmin interface.

```bash
$ docker-compose up -d phpmyadmin
```

## Volumes

Some of the services has a volume in `./volumes/[service]`.
