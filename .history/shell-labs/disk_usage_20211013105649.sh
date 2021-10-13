#!/bin/bash
#Desc : This script allow to verify the disk usage of a server. If disk usage is > 50%, an email 
#       must be sent to the administrator.
# Requirements : 
# - sendmail 
# - postfix
# - only root can execute this script

_hostname=`hostname`
_disk_part="/" #root partition
_email="ingjeanbaptiste@gmail.com"
_date=`date`
_disk_usage=`df -h --output=pcent $_disk_part  | sed 1d | cut -d "%" -f1`

#sendmail function

_notify_admins () {
    msg = """
    subject: Disk usage of $_hostname servers
    `date`,
    The disk usage of $_hostname is above 50%,
    df -h $_disk_part,

    FROM $_hostname server
    """
    echo " Sent on `date`" >> email.txt
    echo "The disk usage of $_hostname is above 50%" >> email.txt
    echo "`df -h $_disk_part`" >> email.txt
    echo "FROM Linux server $_hostname" >> email.txt
    #sendmail $_email < email.txt
    #rm email.txt
    exit 0
}

if [ $_disk_usage -gt 50 ]
then
    _notify_admins
else
    echo "Disk usage <= 50%" >> /dev/null
fi

