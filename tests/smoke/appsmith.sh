echo "[Smoke] - Appsmith\n"

docker-compose up -d appsmith

timeout 120 sh -c 'until nc -z localhost 8085; do sleep 1; done'

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8085/setup/welcome)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
