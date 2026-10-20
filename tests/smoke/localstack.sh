echo "[Smoke] - LocalStack"

if ! docker compose up -d --wait localstack; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

if ! curl -s http://127.0.0.1:4566/_localstack/health | grep -q "4.7.0"; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Smoke] - LocalStack OK"