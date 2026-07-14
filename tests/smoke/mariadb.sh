echo "[Smoke] - MariaDB\n"

docker compose up -d mariadb

wait-on tcp:localhost:3307 --timeout 60000

if [ $? -ne 0 ]; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
