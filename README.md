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

```bash
$ docker-compose exec mongo mongo -u root -p root
```

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

### phpMyAdmin

Service with phpMyAdmin interface.

```bash
$ docker-compose up -d phpmyadmin
```
