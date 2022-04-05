echo "[Smoke] - Appsmith\n"

docker-compose up -d appsmith

wait-on http://localhost:8085/setup/welcome --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8085/setup/welcome)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
