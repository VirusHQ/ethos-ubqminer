TMP_DIR=/tmp/ethos-ubqminer
mkdir $TMP_DIR
cd $tmp/ethos-ubqminer
git clone https://github.com/VirusHQ/ethos-ubqminer.git
cp -r $TMP_DIR/ethos-ubqminer/opt/* /opt/
wget https://github.com/ubiq/ubqminer/releases/download/v0.17.0-alpha.1.ubqhash/ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64.tar.gz
tar -xvf ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64.tar.gz
mv ubqminer-0.17.0-alpha.1.ubqhash-cuda10.0-linux-x86_64 /opt/miners/ubqminer
sudo kill `ps ax | grep /opt/ethos/sbin/ethos-miner-daemon | grep -v grep | awk {'print $1'}`
rm -rf $TMP_DIR
