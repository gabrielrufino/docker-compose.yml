echo "[Smoke] - MariaDB\n"

if ! docker compose up -d --wait mariadb; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
