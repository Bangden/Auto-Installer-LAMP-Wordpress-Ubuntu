#!/bin/sh
echo "\n"
echo "========================================================="
echo "=           Pastikan server masih keadaan fresh         ="
echo "=            Script ini di buat khusus UBUNTU           ="
echo "========================================================="
echo "                          ||||||                         "
echo "               Script Copyright by BangDen               "
echo "========================================================="
echo "\n"
sleep 5
# Hanya berjalan di Ubuntu
ubuntu_version=$(lsb_release -rs)
if [[ "${ubuntu_version}" != "16.04" && "${ubuntu_version}" != "18.04" ]]; then
    echo "Maaf program ini hanya berjalan di OS Ubuntu 16.04 atau 18.04" > /dev/stderr
    exit 1
fi
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
