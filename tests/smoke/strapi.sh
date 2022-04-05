echo "[Smoke] - Strapi\n"

docker-compose up -d strapi

wait-on http://localhost:1337 --timeout 120000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:1337)
if [ $HTTP_STATUS -ne 200  ];
  then
    echo "HTTP_STATUS=$HTTP_STATUS"
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
