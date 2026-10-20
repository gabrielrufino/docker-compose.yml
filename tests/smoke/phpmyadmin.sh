echo "[Smoke] - phpmyadmin\n"

if ! docker compose up -d --wait phpmyadmin; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:8087/)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker compose down -v
    echo "[Fail]"
    exit 1
fi

docker compose down -v
echo "[Pass]"
