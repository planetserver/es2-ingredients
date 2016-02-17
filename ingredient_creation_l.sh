#!/bin/bash


echo "creating ingredients"
while IFS='' read -r line || [[ -n "$line" ]]; do
    TEMP=${line:0:26}
    C='"'
    C2='",'
    TEMP2='"coverage_id": '
    C3='..\/'
    DATA_PRODUCT=$TEMP2$C$TEMP$C2

    sed "20s/.*/    $DATA_PRODUCT/" test_ingestion_ingredient_l.json > ingredients/$TEMP'_ingredient'.json

    sed -i "23s/.*/     $C$C3$line$C/" ingredients/$TEMP'_ingredient'.json

done < "$1"
echo "done"
