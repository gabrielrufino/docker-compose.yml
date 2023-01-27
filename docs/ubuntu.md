# docker-compose.yml - Ubuntu

Service running Ubuntu

```bash
docker compose up -d ubuntu
```

## Volumes

`./volumes/ubuntu` => `/home/shared`

## Environment variables

| **Name**              | **Default** |
| --------------------- | ----------- |
| UBUNTU_VERSION        | 22.10       |
| UBUNTU_CONTAINER_NAME |             |
| UBUNTU_RESTART_POLICY | no          |
