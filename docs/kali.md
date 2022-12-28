# docker-compose.yml - Kali

Service running Kali

```bash
docker compose up -d kali
```

## Installing kali tools

```bash
docker compose exec kali bash
apt update && apt -y install kali-linux-headless
```
