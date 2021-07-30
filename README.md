# docker-compose.yml

My docker development environment

## Services

### Grafana

Service with Grafana.

```bash
docker-compose up -d grafana
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

### Nginx

Service with MySQL Server.

```bash
$ docker-compose up -d nginx
```

Getting in the container bash:
```bash
$ docker-compose exec nginx /bin/bash
```

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

#### Volume

`./volumes/prometheus` => `/etc/prometheus`

### RethinkDB

Service with RethinkDB

```bash
$ docker-compose up -d rethinkdb
```

#### Volume

`./volumes/rethinkdb` => `/home/shared`


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

#### Volumes

`./verdaccio/storage` => `/verdaccio/storage`
`./verdaccio/config`  => `/verdaccio/conf`
`./verdaccio/plugins` => `/verdaccio/plugins`

## Volumes

Some of the services has a volume in `./volumes/[service]`.
