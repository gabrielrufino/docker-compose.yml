# docker-compose.yml - SQL Server

Service running Microsoft SQL Server

```bash
docker compose up -d sqlserver
```

## Environment variables

| **Name**                 | **Default**  |
| ------------------------ | ------------ |
| SQLSERVER_VERSION        | 2019-latest  |
| SQLSERVER_CONTAINER_NAME |              |
| SQLSERVER_SA_PASSWORD    | password@123 |
| SQLSERVER_RESTART_POLICY | no           |
