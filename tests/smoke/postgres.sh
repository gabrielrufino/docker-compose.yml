echo "[Smoke] - Postgres\n"

docker compose up -d postgres

wait-on tcp:localhost:5432 --timeout 60000

# Retry pg_isready up to 10 times to ensure database is actually initialized
for i in {1..10}; do
  if docker compose exec -T postgres pg_isready -U root; then
    docker compose down -v
    echo "[Pass]"
    exit 0
  fi
  sleep 2
done

docker compose down -v
echo "[Fail]"
exit 1
