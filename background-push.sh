#!/bin/sh

now=$(date +"%T")
echo "Current time : $now"

echo "Starting to update Minecraft server with git..."
cd /home/minecraft/minecraft-server

echo "Adding new files..."
git add .

echo "Committing changes..."
git commit -m "Updated: `date +'%Y-%m-%d %H:%M:%S'`"


echo "Pushing changes to GitHub..."
git push --set-upstream origin main
