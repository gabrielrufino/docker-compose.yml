echo "[Smoke] - Mautic\n"

docker-compose up -d mautic
sleep 30

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8082/installer)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
