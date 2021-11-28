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
cerca=`$db_query -e "select count(*) from emrid where url = 'Cerca la Source/';"` 
#...
echo "Getting HUM data"
hum=`$db_query -e "select count(*) from emrid where url = 'HUM/';"` 
#...
echo "Getting Hinche data"
hinche=`$db_query -e "select count(*) from emrid where url = 'Hinche/';"`
#... 
echo "Getting PRA data"
pra=`$db_query -e "select count(*) from emrid where url = 'PRA/' OR url = 'pra/fp_images_with_emr_id/ ';"`
#... 
echo "Getting lacollines data"
lacollines=`$db_query -e "select count(*) from emrid where url = 'Lacollines/';"` 
#...
echo "Getting Thomonde data"
thomonde=`$db_query -e "select count(*) from emrid where url = 'Thomonde/';"`
#...
echo "Getting Verrettes data"
verrettes=`$db_query -e "select count(*) from emrid where url = 'Verrettes/' OR url = 'verrettes/fp_images_with_emr_id/';"`
#...
echo "Getting SSPE data"
sspe=`$db_query -e "select count(*) from emrid where url = 'SSPE/' OR url = 'sspe/fp_images_with_emr_id/';"` 

finger_total=`expr $boucan_carre + $belladere + $cange + $cerca + $hum + $hinche + $pra \
+ $lacollines + $thomonde + $verrettes + $sspe`

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

***************************
Total : $finger_total
"""


cat << EOF | curl --data-binary @- http://172.25.75.198:9091/metrics/job/fingerprinting/instance/172.25.75.198
  # TYPE finger_bcarre_total gauge
  finger_bcarre_total $boucan_carre
  # TYPE finger_belladere_total gauge
  finger_belladere_total $belladere
  # TYPE finger_cange_total gauge
  finger_cange_total $cange
  # TYPE finger_cerca_total gauge
  finger_cerca_total $cerca
  # TYPE finger_hum_total gauge
  finger_hum_total $hum
  # TYPE finger_hinche_total gauge
  finger_hinche_total $hinche
  # TYPE finger_pra_total gauge
  finger_pra_total $pra
  # TYPE finger_lacollines_total gauge
  finger_lacollines_total $lacollines
  # TYPE finger_thomonde_total gauge
  finger_thomonde_total $thomonde
  # TYPE finger_verrettes_total gauge
  finger_verrettes_total $verrettes
  # TYPE finger_sspe_total gauge
  finger_sspe_total $sspe
  # TYPE finger_total gauge
  finger_total $finger_total
EOF


db_hum_query=`mysql -uroot -pmysql --host 127.1 --port 3320 hum -s -N`
#...
echo "Getting count HUM Male Gender"
hum_male_gender=`$db_hum_query -e "select count(gender) from person where gender = 'm' and hivemr is not null;"`
#...
echo "Getting count HUM Female Gender"
hum_male_gender=`$db_hum_query -e "select count(gender) from person where gender = 'm' and hivemr is not null;"`