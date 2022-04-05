echo "[Smoke] - Mongo Express\n"

docker-compose up -d mongo-express

wait-on http://localhost:8081 --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8081)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
