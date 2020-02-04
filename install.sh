#!/bin/sh
echo "\n"
echo "========================================================="
echo "=           Pastikan server masih keadaan fresh         ="
echo "=            Script ini di buat khusus UBUNTU           ="
echo "========================================================="
echo "                          ||||||                         "
echo "               Script Copyright by BangDen               "
echo "========================================================="
sleep 5
sudo apt-get install -y unzip
sleep 0.5
sudo apt-get install -y nano
sleep 0.5
sudo apt-get install -y curl
sleep 0.5
sudo apt-get install -y git
sleep 0.5
sudo apt-get install -y tar
sleep 1
openssl enc -d -aes-256-cbc -in main.enc -out eksekusi.sh -pass pass:bangden
sleep 1
chmod +x eksekusi.sh
sleep 1
sed -i 's/\r//' eksekusi.sh
sleep 2
sh ./eksekusi.sh
