printf "[Smoke] - Postgres\n"

if ! docker compose up -d --wait postgres; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"