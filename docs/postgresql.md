# docker-compose.yml - PostgreSQL

Service running PostgreSQL

```bash
docker compose up -d postgres
```

## Envinronment variables

| **Name**                  | **Default** |
| ------------------------- | ----------- |
| POSTGRESQL_VERSION        | 15.1.0      |
| POSTGRESQL_CONTAINER_NAME |             |
| POSTGRESQL_USER           | root        |
| POSTGRESQL_PASSWORD       | root        |
| POSTGRESQL_DB             | postgres    |
| POSTGRESQL_ENABLE_TLS     | no          |
| POSTGRESQL_RESTART_POLICY | no          |

## Using TLS

1. Set `POSTGRESQL_RESTART_POLICY` to `yes` at the `.env` file

```env
POSTGRESQL_RESTART_POLICY=yes
```

2. Go to the certs volume of the postgres service

```bash
cd ./volumes/postgres/certs
```

3. Generate certificates

```bash
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out postgres.crt -keyout postgres.key
```

4. Change de owner of these files

```bash
sudo chown 1001 postgres.*
```

5. Finally, you can start the service.
