echo "[Smoke] - Appsmith\n"

docker-compose up -d appsmith

timeout 60 sh -c 'until nc -z localhost $1; do sleep 1; done' 8085

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8085/setup/welcome)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
