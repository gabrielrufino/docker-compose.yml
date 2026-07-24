echo "[Smoke] - Shlink\n"

SHLINK_DB_DRIVER=sqlite docker compose up -d shlink

wait-on http-get://localhost:8088/rest/health --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8088/rest/health)
if [ $HTTP_STATUS -ne 200 ];
  then
    docker compose down -v
    echo "[Fail]"
    exit 1
fi

docker compose down -v
echo "[Pass]"
