printf "[Smoke] - Dozzle\n"

HAD_USERS_FILE=0
if [ -f config/dozzle/users.yml ]; then
  HAD_USERS_FILE=1
  cp config/dozzle/users.yml config/dozzle/users.yml.bak
fi

cleanup() {
  docker compose down -v
  if [ "$HAD_USERS_FILE" -eq 1 ]; then
    mv config/dozzle/users.yml.bak config/dozzle/users.yml
  else
    rm -f config/dozzle/users.yml
  fi
}

echo 'admin:' > config/dozzle/users.yml

if ! docker compose up -d --wait dozzle; then
  cleanup
  echo "[Fail]"
  exit 1
fi

HTTP_STATUS=$(curl -L -o /dev/null -s -w "%{http_code}\n" http://localhost:8090/)
if [ "$HTTP_STATUS" -ne 200 ]; then
  cleanup
  echo "[Fail]"
  exit 1
fi

cleanup
echo "[Pass]"
