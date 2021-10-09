echo "[Smoke] - Mongo\n"

docker-compose up -d mongo

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:27017)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
