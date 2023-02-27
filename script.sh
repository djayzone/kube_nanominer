#!/bin/bash

# Télécharger Nanominer
wget https://github.com/nanopool/nanominer/releases/download/v3.7.6/nanominer-linux-3.7.6.tar.gz
mkdir nanominer
# Décompresser dans un dossier nommé "nanominer"
tar -xzf nanominer-linux-3.7.6.tar.gz -C nanominer

# Récupérer le timestamp 
timestamp=$(date +%s)

# Remplacer le contenu du fichier "/nanominer/config_xmr.ini" 
cat > nanominer/config_xmr.ini << EOF
; Address to send funds to.
wallet = 44iLhbGuyJTbkkKNR8kun3PDMZT7b3pFjJ2NbY888ruQWxC5st19A6B1N2ks1LmEfJDW9jXoW1sfTAfHZdDrSoKGQ3tm5d1

; (Optional) Coin to mine.
coin = XMR

; (Optional) Rig (worker) name.
rigName = djayzonewave_$timestamp
EOF
