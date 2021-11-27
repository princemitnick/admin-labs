#!/bin/bash

db_query="mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange"

#...
echo "Getting Belladere data"
belladere=`$db_query -e "select count(*) from emrid where url = 'Belladeres/';"`
#...
echo "Getting Boucan Carre data"
boucan_carre=`$db_query -e "select count(*) from emrid where url = 'Boucan-carre/' OR url = 'Boucan Carre/' OR url = 'boucan/fp_images_with_emr_id/';"` 
#...
echo "Getting Cange data"
cange=`$db_query -e "select count(*) from emrid where url = 'cange/fp_images_with_emr_id/' OR url = 'Cange/';"` 
#...
echo "Getting Cerca  la source data"
cerca =`$db_query -e "select count(*) from emrid where url = 'Cerca la Source/';"` 
#...
echo "Getting HUM data"
hum=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'HUM/';"` 
#...
echo "Getting Hinche data"
hinche=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Hinche/';"`
#... 
echo "Getting PRA data"
pra=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'PRA/' OR url = 'pra/fp_images_with_emr_id/ ';"`
#... 
echo "Getting lacollines data"
lacollines=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Lacollines/';"` 
#...
echo "Getting Thomonde data"
thomonde=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Thomonde/';"`
#...
echo "Getting Verrettes data"
verrettes=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Verrettes/' OR url = 'verrettes/fp_images_with_emr_id/';"`
#...
echo "Getting SSPE data"
sspe=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'SSPE/' OR url = 'sspe/fp_images_with_emr_id/';"` 

echo """
Belladere : $belladere
Cange : $cange
Boucan Carre : $boucan_carre
Cerca La Source : $cerca
HUM : $hum
Hinche : $hinche
PRA : $pra
Lacollines : $lacollines
Thomonde : $thomonde
Verrettes : $verrettes
SSPE : $sspe
"""