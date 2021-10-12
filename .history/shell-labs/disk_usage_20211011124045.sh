#!/bin/bash
#Desc : Le but de ce script est de verifier le pourcentage d'utilisation du disque.
#       si l'utilisation est > a 50%, l'administrateur doit etre notifie via un email.

echo "Disk Usage"

chaineZ=abcd
l_chaine=${#chaineZ}

echo $l_chaine
if [ $l_chaine -eq 3 ]
then
    echo "Yes"
fi

df -h --output=pcent /dev/sda4 