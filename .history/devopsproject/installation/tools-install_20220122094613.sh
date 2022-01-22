#!/bin/bash


#VAGRANT INSTALLATION


sudo apt-get update 

sudo apt-get install virtualbox

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant

#GIT INSTALLATION

sudo apt-get install git