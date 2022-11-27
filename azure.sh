#!/bin/sh
sudo apt update
sudo apt install screen -y
wget https://github.com/xmrig/xmrig/releases/download/v6.18.0/xmrig-6.18.0-linux-x64.tar.gz
tar -xf xmrig-6.18.0-linux-x64.tar.gz
cd xmrig-6.18.0
screen -dmS run ./xmrig -a rx -o stratum+ssl://randomxmonero.auto.nicehash.com:443 --tls -u 3FR6UXevgLcjmjmdzgnCWfSP6QP5xUSv9s.MDK
