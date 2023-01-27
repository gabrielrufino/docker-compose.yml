# docker-compose.yml - Kali

Service running Kali

```bash
docker compose up -d kali
```

## Environment variables

| **Name**            | **Default** |
| ------------------- | ----------- |
| KALI_VERSION        | latest      |
| KALI_CONTAINER_NAME |             |
| KALI_RESTART_POLICY | no          |

## Installing kali tools

```bash
docker compose exec kali bash
apt update && apt -y install kali-linux-headless
```
