echo "---- Smoke tests ----"

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
sh $FILEDIR/strapi.sh && \
sh $FILEDIR/verdaccio.sh
# && sh $FILEDIR/mongo-express.sh \
