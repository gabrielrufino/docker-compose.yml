echo "[Smoke] - Metabase\n"

docker-compose up -d metabase

wait-on http://localhost:3001/setup --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3001/setup)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker-compose down
    echo "[Fail]"
    exit 1
fi

docker-compose down
echo "[Pass]"
