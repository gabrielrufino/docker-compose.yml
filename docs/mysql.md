# docker-compose.yml - MySQL

Service with MySQL Server.

```bash
$ docker compose up -d mysql
```

Getting in the container bash:
```bash
$ docker compose exec mysql /bin/bash
```

## Volumes

`./volumes/mysql` => `/home/shared`
