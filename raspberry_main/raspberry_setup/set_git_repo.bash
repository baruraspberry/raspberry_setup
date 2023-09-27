#!/bin/bash
cd home/pi/Desktop/raspberry_setup/raspberry_main/raspberry_setup
pwd
echo "Raspberry Name"
read raspName
sed -i "s/raspberryname/${raspName}/" sensors.py
sed -i "s/raspberryname/${raspName}/" git-push.bash
ssh-keygen -t rsa
echo "------------------------Go to github settings and click 'add SSH key' with this key.------------------------"
cat ~/.ssh/id_rsa.pub
echo "-----------------------------------------Press enter after copy.--------------------------------------------"
read pulse
cd ../data
sudo chown pi:pi ~/.gitconfig
git init
git config --global init.defaultBranch origin main
git config --global user.email "kevsernury@gmail.com"
git config --global user.name "baruraspberry"
git config --global pull.rebase false
echo git remote add origin git@github.com:baruraspberry/data.git
git remote add origin git@github.com:baruraspberry/data.git
sleep 3
echo remote set-url origin git@github.com:baruraspberry/data.git
git remote set-url origin git@github.com:baruraspberry/data.git
sleep 3
git init
git add .
git commit -m "first time"
echo git branch $raspName
git branch $raspName
sleep 3
echo git checkout $raspName
git checkout $raspName
sleep 3
#git push --set-upstream origin $raspName
#git push -u origin $raspName
