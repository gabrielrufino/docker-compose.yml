# docker-compose.yml - Traefik

Service running Traefik

```bash
docker compose up -d traefik
```

## Environment variables

| **Name**                   | **Default**            |
| -------------------------- | ---------------------- |
| TRAEFIK_VERSION            | v2.9.10                |
| TRAEFIK_CONTAINER_NAME     |                        |
| TRAEFIK_BASE_HOST          | localhost              |
| TRAEFIK_ACME_EMAIL         |                        |
| TRAEFIK_DASHBOARD_USERNAME |                        |
| TRAEFIK_DASHBOARD_PASSWORD |                        |
| TRAEFIK_RESTART_POLICY     | no                     |
