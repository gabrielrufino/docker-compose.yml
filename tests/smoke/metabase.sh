echo "[Smoke] - Metabase\n"

if ! docker compose up -d --wait metabase; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://localhost:3001/setup)
if [ $HTTP_STATUS -ne 200  ];
  then
    docker compose down -v
    echo "[Fail]"
    exit 1
fi

docker compose down -v
echo "[Pass]"
