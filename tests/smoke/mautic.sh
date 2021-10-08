echo "[Smoke] - Mautic"

# docker-compose up -d mautic
curl --connect-timeout 30 --fail -I http://localhost:8082
docker-compose down
