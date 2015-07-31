#/bin/zsh

cd bin


#wget https://dl.google.com/dl/android/studio/ide-zips/1.3.0.10/android-studio-ide-141.2117773-linux.zip
NODE_VERSION="0.12.7"
wget https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz
tar -xf node-v$NODE_VERSION-linux-x64.tar.gz 
exit
mv node-v$NODE_VERSION-linux-x64 /usr/local
echo 'export PATH="/usr/local/node-v$NODE_VERSION-linux-x64:$PATH"' >> ~/.zshrc  

TESTDISK=testdisk-7.0.linux26-x86_64.tar.bz2
wget http://www.cgsecurity.org/$TESTDISK
tar -xf $TESTDISK
sudo mv testdisk-7.0 /usr/local/
echo 'export PATH="/usr/local/testdisk-7.0:$PATH"' >> ~/.zshrc  
echo "Testdisk installed"


cd ..