echo "[Smoke] - Hermes\n"

docker compose up -d hermes

wait-on tcp:localhost:9119 --timeout 60000

HTTP_STATUS=$(curl -L -o /dev/null -s -w "%{http_code}\n" http://localhost:9119/)
if [ $HTTP_STATUS -ne 200 ];
  then
    docker compose down -v
    echo "[Fail]"
    exit 1
fi

docker compose down -v
echo "[Pass]"
