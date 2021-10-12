#!/bin/bash
#Desc : Le but de ce script est de verifier le pourcentage d'utilisation du disque.
#       si l'utilisation est > a 50%, l'administrateur doit etre notifie via un email.

hostname=`hostname`
disk_part = "/dev/sda4"
pcent_usage_of_disk = `df -h /`

echo "Disk Usage"

disk_usage=`df -h --output=pcent /dev/sda2  | sed 1d | cut -d "%" -f1`

if [ $disk_usage -gt 50 ]; then
  echo "Disk usage > 50"
else
  echo "Disk usage (OK)"
fi

sendmail() {
    subject="Disk usage of server `hostname"
}
