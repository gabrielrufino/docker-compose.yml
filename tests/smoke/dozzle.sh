echo "[Smoke] - Dozzle\n"

echo 'admin:' > config/dozzle/users.yml

docker compose up -d dozzle

wait-on tcp:localhost:8090 --timeout 60000

HTTP_STATUS=$(curl -L -o /dev/null -s -w "%{http_code}\n" http://localhost:8090/)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker compose down -v
    rm config/dozzle/users.yml
    echo "[Fail]"
    exit 1
fi

docker compose down -v
rm config/dozzle/users.yml
echo "[Pass]"
