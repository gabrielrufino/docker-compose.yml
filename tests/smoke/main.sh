echo "---- Smoke tests ----"

FILEPATH=$(realpath $0)
FILEDIR=$(dirname $FILEPATH)

sh $FILEDIR/grafana.sh
sh $FILEDIR/loki.sh
sh $FILEDIR/mautic.sh
sh $FILEDIR/metabase.sh
sh $FILEDIR/mongo.sh
sh $FILEDIR/mongo-express.sh
sh $FILEDIR/nextcloud.sh
sh $FILEDIR/nginx.sh
sh $FILEDIR/strapi.sh
sh $FILEDIR/verdaccio.sh
