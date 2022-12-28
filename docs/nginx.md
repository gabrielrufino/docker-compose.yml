# docker-compose.yml - Nginx

Service running Nginx

```bash
docker compose up -d nginx
```

Getting in the container bash:
```bash
docker compose exec nginx /bin/bash
```

### HTTPS

```bash
apt install -y certbot python3-certbot-nginx
certbot --nginx  --webroot-path /var/www/certbot/ --email contato@gabrielrufino.com
```
