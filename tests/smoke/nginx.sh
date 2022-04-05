echo "[Smoke] - Nginx\n"

cp ./config/nginx/default.example.conf ./config/nginx/default.conf
docker-compose up -d nginx

wait-on http://localhost:8080 --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8080)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
