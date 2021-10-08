echo "[Smoke] - Mautic"

docker-compose up -d mautic
curl --connect-timeout 30 -I http://localhost:8082
docker-compose down
