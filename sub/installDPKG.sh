#/bin/bash
echo "[x] Run All Local Deps Depedencies"
cd deb

echo "[x] Download All Local Smartgit Depedencies"
wget http://www.syntevo.com/smartgit/download?file=smartgit/smartgit-6_5_9.deb
echo "[x] Download All Local Sublime Depedencies"
wget http://c758482.r82.cf2.rackcdn.com/sublime-text_build-3083_amd64.deb
echo "[x] Download All Local teamviewer Depedencies"
wget http://download.teamviewer.com/download/teamviewer_i386.deb
echo "[x] Download All Local chrome Depedencies"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo "[x] Download All Local birdie Depedencies"
wget https://github.com/birdieapp/birdie/releases/download/1.1/birdie_1.1.0.r421.pkg19.ubuntu14.04.1_amd64.deb
echo "[x] Install All Local Deps Depedencies"
sudo dpkg -i *
sudo apt-get install -f -y
rm *.deb 
cd ..
