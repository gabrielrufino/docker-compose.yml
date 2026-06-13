echo "[Smoke] - Grafana\n"

docker compose up -d grafana

wait-on http://localhost:3000/login --timeout 60000

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3000/login)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker compose down --rmi all -v
    echo "[Fail]"
    exit 1
fi

docker compose down --rmi all -v
echo "[Pass]"
