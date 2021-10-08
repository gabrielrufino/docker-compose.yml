echo "[Smoke] - Mautic"

# docker-compose up -d mautic
sleep 30

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8082)
if [ $HTTP_STATUS -ne 302  ];
  then
    exit 1
fi

docker-compose down
