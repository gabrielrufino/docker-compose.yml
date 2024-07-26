# docker-compose.yml - Grafana

Service running Grafana

```bash
docker compose up -d grafana
```

## Environment variables

| **Name**               | **Default**       |
| ---------------------- | ----------------- |
| GRAFANA_VERSION        | 9.5.2             |
| GRAFANA_CONTAINER_NAME |                   |
| GRAFANA_TRAEFIK_HOST   | grafana.localhost |
| GRAFANA_RESTART_POLICY | no                |
