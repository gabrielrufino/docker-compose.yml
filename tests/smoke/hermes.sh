printf "[Smoke] - Hermes\n"

if ! docker compose up -d --wait hermes; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

HTTP_STATUS=$(curl -L -o /dev/null -s -w "%{http_code}\n" http://localhost:9119/)
if [ "$HTTP_STATUS" -ne 200 ]; then
  docker compose down -v
  echo "[Fail]"
  exit 1
fi

docker compose down -v
echo "[Pass]"
