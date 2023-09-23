#!/bin/bash
cd ~/Desktop/raspberry_sensors/raspberry_setup
echo "Raspberry Name"
read raspName
sed -i "s/raspberryname/${raspName}/" sensors.py
sed -i "s/raspberryname/${raspName}/" git-push.bash
ssh-keygen -t rsa
echo "------------------------Go to github settings and click 'add SSH key' with this key.------------------------"
cat ~/.ssh/id_rsa.pub
echo "-----------------------------------------Press enter after copy.--------------------------------------------"
read pulse
mkdir ~/Desktop/raspberry_sensors/data
cd ../data
git init
git config --global init.defaultBranch origin main
git config --global user.email "kevsernuryildiz@hotmail.com.tr"
git config --global user.name "kevsernury"
git config --global pull.rebase false
echo git remote add origin git@github.com:kevsernury/data.git
git remote add origin git@github.com:kevsernury/data.git
sleep 3
echo remote set-url origin git@github.com:kevsernury/data.git
git remote set-url origin git@github.com:kevsernury/data.git
sleep 3
git commit -m "first time"
echo git branch $raspName
git branch $raspName
sleep 3
echo git checkout $raspName
git checkout $raspName
sleep 3
#git push --set-upstream origin $raspName
#git push -u origin $raspName
