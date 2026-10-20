echo "[Smoke] - Mysql\n"

if ! docker compose up -d --wait mysql; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
