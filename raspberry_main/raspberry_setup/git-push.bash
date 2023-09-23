#!/bin/bash
eval `ssh-agent -s`
ssh-add ~/.ssh/*_rsa
while true
do 
 cd ~/Desktop/raspberry_sensors/data
 git add .
 git commit -m "raspberryname `date`"
 git push --set-upstream origin raspberryname
 echo "pushing"
 sleep 20
done
