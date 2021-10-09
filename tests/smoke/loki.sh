echo "[Smoke] - Loki\n"

docker-compose up -d loki
sleep 60

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3100/ready)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"