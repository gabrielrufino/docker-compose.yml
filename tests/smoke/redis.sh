echo "[Smoke] - Redis\n"

if ! docker compose up -d --wait redis; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
