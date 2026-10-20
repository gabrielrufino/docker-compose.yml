cp ./config/prometheus/prometheus.example.yml ./config/prometheus/prometheus.yml

docker compose pull
if ! docker compose up -d --wait; then
  docker compose down --rmi all -v
  echo "[Fail]"
  exit 1
fi
docker compose down --rmi all -v
echo "[Pass]"
