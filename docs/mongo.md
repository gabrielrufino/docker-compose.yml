# docker-compose.yml - Mongo

Service running MongoDB server

```bash
docker compose up -d mongo
```

## Environment variables

| **Name**                   | **Default** |
| -------------------------- | ----------- |
| MONGO_VERSION              | 7.0.5       |
| MONGO_CONTAINER_NAME       |             |
| MONGO_INITDB_ROOT_USERNAME | root        |
| MONGO_INITDB_ROOT_PASSWORD | root        |
| MONGO_RESTART_POLICY       | no          |
