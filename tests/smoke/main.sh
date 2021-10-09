echo "---- Smoke tests ----"

FILEPATH=$(realpath $0)
FILEDIR=$(dirname $FILEPATH)

sh $FILEDIR/mautic.sh
sh $FILEDIR/grafana.sh
sh $FILEDIR/loki.sh
sh $FILEDIR/mongo.sh
