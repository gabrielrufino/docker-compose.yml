echo "---- Smoke tests ----"

if ! command -v wait-on >/dev/null 2>&1; then
  npm i -g wait-on
fi

FILEPATH=$(realpath $0)
FILEDIR=$(dirname $FILEPATH)

sh $FILEDIR/gitea.sh && \
sh $FILEDIR/grafana.sh && \
sh $FILEDIR/hermes.sh && \
sh $FILEDIR/localstack.sh && \
sh $FILEDIR/loki.sh && \
sh $FILEDIR/mariadb.sh && \
sh $FILEDIR/matomo.sh && \
sh $FILEDIR/metabase.sh && \
sh $FILEDIR/mongo.sh && \
sh $FILEDIR/mysql.sh && \
sh $FILEDIR/nextcloud.sh && \
sh $FILEDIR/nginx.sh && \
sh $FILEDIR/phpmyadmin.sh && \
sh $FILEDIR/redis.sh && \
sh $FILEDIR/postgres.sh && \
sh $FILEDIR/verdaccio.sh && \
sh $FILEDIR/shlink.sh && \
sh $FILEDIR/dozzle.sh
