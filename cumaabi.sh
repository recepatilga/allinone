#!/bin/bash
cd /root
sudo apt-get update

sudo apt install unzip

wget https://github.com/olhokom/deepploy/raw/main/cml_mn.zip

unzip cml_mn.zip

mv AutoRclone2 AutoRclone
cd /root 

apt-get install -y python3 python3-pip
sudo apt install -y libsodium-dev cmake g++ git build-essential
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init
./make_devel.sh
curl https://rclone.org/install.sh | sudo bash
cd /usr/bin
bash <(wget -qO- https://git.io/gclone.sh)
cd /
mkdir disk2
cd disk2
mkdir temp
mkdir plots
cd /root
chmod 777 /root/AutoRclone/autoClone/madmax.sh
chmod 777 /root/AutoRclone/autoClone/autoClone.sh
screen -dmS madmax
screen -S madmax -X stuff  "/root/AutoRclone/autoClone/madmax.sh^M" 
screen -dmS  clone
screen -S clone -X stuff  "/root/AutoRclone/autoClone/autoClone.sh disk2 UP 0 0 y^M"
