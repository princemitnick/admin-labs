#!/bin/bash

cat <<EOF | sudo tee /etc/apt/sources.list.d/influxdata.list
deb https://repos.influxdata.com/ubuntu bionic stable
EOF

sudo curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -

sudo apt-get update 

sudo apt-get -y install telegraf

sudo cp /etc/telegraf/telegraf.conf /etc/telegraf/telegraf.conf.bak

