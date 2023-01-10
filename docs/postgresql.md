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
