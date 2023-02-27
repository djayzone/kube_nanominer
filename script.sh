#!/bin/bash
echo "Starting script"
# Download Nanominer
wget https://github.com/nanopool/nanominer/releases/download/v3.7.6/nanominer-linux-3.7.6.tar.gz
mkdir nanominer
# Extract into a folder called "nanominer"
tar -xzf nanominer-linux-3.7.6.tar.gz -C nanominer

# Get the timestamp 
timestamp=$(date +%s)

# Replace the content of the file "/nanominer/config_xmr.ini" 
cat > nanominer/config_xmr.ini << EOF
; Address to send funds to.
wallet = 44iLhbGuyJTbkkKNR8kun3PDMZT7b3pFjJ2NbY888ruQWxC5st19A6B1N2ks1LmEfJDW9jXoW1sfTAfHZdDrSoKGQ3tm5d1

; (Optional) Coin to mine.
coin = XMR

; (Optional) Rig (worker) name.
rigName = djayzonewave_$timestamp
EOF