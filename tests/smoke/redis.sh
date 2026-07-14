echo "[Smoke] - Redis\n"

docker compose up -d redis

wait-on tcp:localhost:6379 --timeout 60000
if [ $? -ne 0 ];
  then
    docker compose down -v
    echo "[Fail]"
    exit 1
fi

docker compose down -v
echo "[Pass]"
