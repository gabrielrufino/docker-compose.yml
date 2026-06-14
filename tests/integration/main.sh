cp ./config/prometheus/prometheus.example.yml ./config/prometheus/prometheus.yml

docker compose pull
docker compose up -d
docker compose down --rmi all -v
