#!/bin/bash
#Desc : This script allow to verify the disk usage of a server. If disk usage is > 50%, an email 
#       must be sent to the administrator.
# Requirements : 
# - sendmail 
# - postfix
# - only root can execute this script

_hostname=`hostname`
_disk_part="/dev/sda4"
_email="ingjeanbaptiste@hotmail.com"
_date=`date`
_disk_usage=`df -h --output=pcent $_disk_part  | sed 1d | cut -d "%" -f1`

#sendmail function

_notify_admins () {
    echo "Subject: Disk usage of $_hostname servers" > email.txt
    echo " Sent on `date`" >> email.txt
    echo "The disk usage of $_hostname is above 50%" >> email.txt
    echo "`df -h $disk_part`" >> email.txt
    echo "FROM Linux server $_hostname" >> email.txt
    sendmail $_email < email.txt
}

if [ $_disk_usage -gt 50 ]
then
    _notify_admins
else
    echo "Disk usage <= 50%" >> /dev/null
fi

