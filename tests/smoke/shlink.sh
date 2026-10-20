printf "[Smoke] - Shlink\n"

if ! SHLINK_DB_DRIVER=sqlite docker compose up -d --wait shlink; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8088/rest/health)
if [ "$HTTP_STATUS" -ne 200 ]; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
