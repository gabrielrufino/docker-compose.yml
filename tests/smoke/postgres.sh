echo "[Smoke] - Postgres\n"

docker compose up -d postgres

wait-on tcp:localhost:5432 --timeout 60000
if [ $? -ne 0 ]; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

# Retry pg_isready up to 10 times to ensure database is actually initialized
i=0
while [ $i -lt 10 ]; do
  if docker compose exec -T postgres pg_isready -U root; then
    docker compose down -v
    echo "[Pass]"
    exit 0
  fi
  sleep 2
  i=$((i+1))
done

docker compose down -v
echo "[Fail]"
exit 1