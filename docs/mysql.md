# docker-compose.yml - MySQL

Service running MySQL Server.

```bash
docker compose up -d mysql
```

## Environment variables

| **Name**             | **Default**   |
| -------------------- | ------------- |
| MYSQL_VERSION        | 8.0.31        |
| MYSQL_DATABASE       |               |
| MYSQL_USER           | gabrielrufino |
| MYSQL_PASSWORD       | 12345678      |
| MYSQL_ROOT_PASSWORD  | root          |
| MYSQL_RESTART_POLICY | no            |
