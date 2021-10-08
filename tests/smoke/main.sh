echo "---- Smoke tests ----"

FILEPATH=$(realpath $0)
FILEDIR=$(dirname $FILEPATH)

sh $FILEDIR/mautic.sh
