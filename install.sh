#!/bin/sh
echo "\n"
echo "========================================================="
echo "=           Pastikan server masih keadaan fresh         ="
echo "=            Script ini di buat khusus Ubuntu           ="
echo "========================================================="
echo "                          ||||||                         "
echo "               Script Copyright by BangDen               "
echo "========================================================="
sleep 2
sudo apt-get install -y install unzip
sudo apt-get install -y nano
sudo apt-get install -y curl
sudo apt-get install -y tar
sleep 1
openssl enc -d -aes-256-cbc -in main.enc -out eksekusi.sh -pass pass:bangden
chmod +x eksekusi.sh
sed -i 's/\r//' eksekusi.sh
echo "\n"
sh ./eksekusi.sh
sleep 2
