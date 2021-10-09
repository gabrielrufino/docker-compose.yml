echo "[Smoke] - Grafana"

docker-compose up -d grafana

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3000)
if [ $HTTP_STATUS -ne 302  ];
  then
    exit 1
fi

docker-compose down
