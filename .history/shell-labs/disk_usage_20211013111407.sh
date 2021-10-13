#!/bin/bash
#Desc : This script allow to verify the disk usage of a server. If disk usage is > 50%, an email 
#       must be sent to the administrator.
# Requirements : 
# - sendmail 
# - postfix
# - only root can execute this script

_hostname=`hostname`
_disk_part="/" #var that represents the root partition
_email="ingjeanbaptiste@gmail.com"
_date=`date`
_disk_usage=`df -h --output=pcent $_disk_part  | sed 1d | cut -d "%" -f1`

#sendmail function

_notify_admins () {
    echo "Subject : Disk usage of $_hostname servers on `date`" > email.txt
    msg="""
    Please checkout the disk usage of the root partition,
    `df -h $_disk_part`,
    FROM $_hostname server
    """
    echo "$msg" >> email.txt ; sendmail $_email < email.txt && rm email.txt
    exit 0
}

if [ $_disk_usage -gt 50 ]
then
    _notify_admins
else
    echo "Disk usage <= 50%" >> /dev/null
fi

