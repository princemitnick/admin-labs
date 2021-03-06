#!/bin/bash

#...
echo "Getting Belladere data"
belladere=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Belladeres/';"`
#...
echo "Getting Boucan Carre data"
boucan_carre=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Boucan-carre/' OR url = 'Boucan Carre/' OR url = 'boucan/fp_images_with_emr_id/';"` 
#...
echo "Getting Cange data"
cange=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'cange/fp_images_with_emr_id/' OR url = 'Cange/';"` 
#...
echo "Getting Cerca  la source data"
cerca =`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Cerca la Source/';"` 
#...
echo "Getting HUM data"
hum=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'HUM/';"` 
#...
echo "Getting Hinche data"
hinche=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Hinche/';"`
#... 
pra=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'PRA/' OR url = 'pra/fp_images_with_emr_id/ ';"`
#... 
lacollines=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Lacollines/';"` 
#...
thomonde=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Thomonde/';"`
#...
verrettes=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'Verrettes/' OR url = 'verrettes/fp_images_with_emr_id/';"`
#...
sspe=`mysql -uroot -pmysql --host 127.1 --port 3320 -s -N exchange -e "select count(*) from emrid where url = 'SSPE/' OR url = 'sspe/fp_images_with_emr_id/';"` 