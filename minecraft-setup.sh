#!/bin/sh

yum install -y git

git config --global user.email "omrumbakitemiz@icloud.com"
git config --global user.name "Ömrüm Baki TEMİZ"

mkdir -p /home/minecraft

cd /home/minecraft

git clone https://$GITHUB_TOKEN@github.com/omrumbakitemiz/minecraft-server.git

while true; do sleep 120; background-push.sh >>output.txt; done &

cd /home/minecraft/minecraft-server

java -Xmx2G -jar fabric-server-mc.1.18.2-loader.0.14.7-launcher.0.11.0.jar nogui
