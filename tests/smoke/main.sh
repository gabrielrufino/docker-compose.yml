echo "---- Smoke tests ----"

npm i -g wait-on

FILEPATH=$(realpath $0)
FILEDIR=$(dirname $FILEPATH)

sh $FILEDIR/appsmith.sh && \
sh $FILEDIR/gitea.sh && \
sh $FILEDIR/grafana.sh && \
sh $FILEDIR/loki.sh && \
sh $FILEDIR/matomo.sh && \
sh $FILEDIR/mautic.sh && \
sh $FILEDIR/metabase.sh && \
sh $FILEDIR/mongo.sh && \
sh $FILEDIR/nextcloud.sh && \
sh $FILEDIR/nginx.sh && \
sh $FILEDIR/openvscode.sh && \
sh $FILEDIR/phpmyadmin.sh && \
sh $FILEDIR/strapi.sh && \
sh $FILEDIR/verdaccio.sh
