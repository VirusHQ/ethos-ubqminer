TMP_DIR=/tmp/ethos-ubqminer
mkdir $TMP_DIR
wget https://github.com/ubiq/ubqminer/releases/download/v0.17.0-alpha.1.ubqhash/ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64.tar.gz -P $TMP_DIR
cd $TMP_DIR
tar -xvf ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64.tar.gz
mv ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64 /opt/miners/ubqminer
sudo service ethos-miner-monitor restart
minestop
rm -rf $TMP_DIR
