# docker-compose.yml - Mautic

Service running Mautic

```bash
docker compose up -d mautic
```

## Environment variables

| **Name**              | **Default** |
| --------------------- | ----------- |
| MAUTIC_VERSION        | v4          |
| MAUTIC_DB_HOST        | mysql       |
| MAUTIC_DB_USER        | root        |
| MAUTIC_DB_PASSWORD    | root        |
| MAUTIC_DB_NAME        | mautic_db   |
| MAUTIC_RUN_CRON_JOBS  |             |
| MAUTIC_RESTART_POLICY | no          |
