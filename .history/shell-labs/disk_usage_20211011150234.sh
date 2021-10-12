#!/bin/bash
#Desc : Le but de ce script est de verifier le pourcentage d'utilisation du disque.
#       si l'utilisation est > a 50%, l'administrateur doit etre notifie via un email.

echo "Disk Usage"

disk_usage=`df -h --output=pcent /dev/sda4  | sed 1d | cut -d "%" -f1`

if [ $disk_usage -gt 50 ]; then
  echo "Disk usage > 50"
else
  echo "Disk usage (OK)"
fi