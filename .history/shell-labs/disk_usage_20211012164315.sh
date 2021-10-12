#!/bin/bash
#Desc : Le but de ce script est de verifier le pourcentage d'utilisation du disque.
#       si l'utilisation est > a 50%, l'administrateur doit etre notifie via un email.
# Requirements : 
# - sendmail 
# - postfix

hostname=`hostname`
disk_part="/dev/sda4"
pcent_usage_of_disk=`df -h "$disk_part"`
_date=`date`

#echo "Disk Usage"

disk_usage=`df -h --output=pcent $disk_part  | sed 1d | cut -d "%" -f1`

_sendmail () {
    echo "Subject: Disk usage of server $hostname" > email.txt
    echo $date >> email.txt
    disk_usage_detail=`df -h $disk_part` >> email.txt
    sendmail < email.txt
}

_sendmail

if [ $disk_usage -gt 50 ]
then
    echo "Disk usage > 50%"; _sendmail
else
    echo "Disk usage <= 50%"
fi

