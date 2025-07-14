echo "[Smoke] - LocalStack"

docker compose up localstack -d
wait-on -t 60000 http://127.0.0.1:4566/_localstack/health
curl -s http://127.0.0.1:4566/_localstack/health | grep -q "4.6.0"
docker compose down localstack

echo "[Smoke] - LocalStack OK"