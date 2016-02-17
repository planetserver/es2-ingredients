# es2-ingredients

These steps are needed to create the ingredients and ingest the data into rasdaman:

* ls -1 *s_trr3*.tif > list_s.txt
* ls -1 *l_trr3*.tif > list_l.txt
* mkdir ingredients
* execute ./ingredient_creation_s.sh list_s.txt
* execute ./ingredient_creation_l.sh list_l.txt
