#/bin/zsh

cd bin


NODE_VERSION="0.12.7"
wget https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz
tar -xf node-v$NODE_VERSION-linux-x64.tar.gz
sudo mv node-v$NODE_VERSION-linux-x64 /usr/local
echo 'export PATH="/usr/local/node-v$NODE_VERSION-linux-x64:$PATH"' >> ~/.zshrc  
rm node-v$NODE_VERSION-linux-x64.tar.gz

TESTDISK=testdisk-7.0.linux26-x86_64.tar.bz2
wget http://www.cgsecurity.org/$TESTDISK
tar -xf $TESTDISK
sudo mv testdisk-7.0 /usr/local/
echo 'export PATH="/usr/local/testdisk-7.0:$PATH"' >> ~/.zshrc  
echo "Testdisk installed"
rm $TESTDISK

cd ..
