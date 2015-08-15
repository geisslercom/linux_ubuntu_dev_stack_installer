#/bin/zsh

cd bin

#MONGODB
MONGODB_VERSION="3.0.5"
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1410-clang-$MONGODB_VERSION.tgz
tar -xfvz mongodb-linux-x86_64-ubuntu1410-clang-$MONGODB_VERSION.tgz
mv mongodb-linux-x86_64-ubuntu1410-clang-$MONGODB_VERSION /usr/local/mongodb
echo 'export PATH="/usr/local/mongodb/bin"' >> ~/.zshrc  
echo "MongoDB installed"


NODE_VERSION="0.12.7"
wget https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz
tar -xf node-v$NODE_VERSION-linux-x64.tar.gz 
mv node-v$NODE_VERSION-linux-x64 /usr/local
echo 'export PATH="/usr/local/node-v$NODE_VERSION-linux-x64:$PATH"' >> ~/.zshrc  
echo "NODEJS & NPM installed"

TESTDISK=testdisk-7.0.linux26-x86_64.tar.bz2
wget http://www.cgsecurity.org/$TESTDISK
tar -xf $TESTDISK
sudo mv testdisk-7.0 /usr/local/
echo 'export PATH="/usr/local/testdisk-7.0:$PATH"' >> ~/.zshrc  
echo "Testdisk installed"
rm $TESTDISK

cd ..
