# docker-compose.yml - Mongo

Service running MongoDB server

```bash
docker-compose up -d mongo
```

**User:** root<br />
**Password:** root

Getting in the container bash:
```bash
docker-compose exec mongo /bin/bash
```

Getting in the mongo shell:
```bash
docker-compose exec mongo mongo -u root -p root
```

## Volumes

`./volumes/mongo` => `/home/shared`
