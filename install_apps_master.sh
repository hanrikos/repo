#!/bin/bash

# ----------------------------------------------------------------------
# | Add repos                                                          |
# ----------------------------------------------------------------------

# prometheus
wget https://s3-eu-west-1.amazonaws.com/deb.robustperception.io/41EFC99D.gpg | sudo apt-key add -
# ----------------------------------------------------------------------
# | Installing prometheus node-exporter pushgateway alertmanager        |
# ----------------------------------------------------------------------
sudo apt-get install prometheus prometheus-node-exporter prometheus-pushgateway prometheus-alertmanager -y
sudo systemctl start prometheus


# grafana
wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana_5.1.4_amd64.deb
sudo apt-get install -y adduser libfontconfig
sudo dpkg -i grafana_5.1.4_amd64.deb
curl https://packagecloud.io/gpg.key | sudo apt-key add -
sudo apt-get update
# ----------------------------------------------------------------------
# | Installing grafana                                                   |
# ----------------------------------------------------------------------
sudo apt-get install grafana
sudo apt-get install -y apt-transport-https
sudo service grafana-server start


# Jenkins Master
sudo add-apt-repository ppa:webupd8team/java
sudo apt install oracle-java8-installer
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo apt-add-repository "deb https://pkg.jenkins.io/debian-stable binary/"
# ----------------------------------------------------------------------
# | Installing jenking                                                       |
# ----------------------------------------------------------------------
sudo apt install jenkins


#  ----------------------------------------------------------------------
# | Update sources                                                     |
# ----------------------------------------------------------------------
sudo apt-get -y update


