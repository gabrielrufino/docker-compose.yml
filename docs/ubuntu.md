# docker-compose.yml - Ubuntu

Service running Ubuntu

```bash
docker-compose up -d ubuntu
```

Getting in the container bash:
```bash
docker-compose exec ubuntu /bin/bash
```

## Volumes

`./volumes/ubuntu` => `/home/shared`
