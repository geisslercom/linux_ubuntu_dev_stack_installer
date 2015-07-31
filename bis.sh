#!/bin/bash
echo "[o] Ben's Linux Stack Installing Script"
echo "[o] Adding Sources to Deb List"
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
mkdir deb src bin
sudo chmod 775 ./sub/*

echo "[o] Update and Upgrade packages"
sudo apt-get update
sudo apt-get upgrade

echo "Installing Repo Depedencies"
packages=(
	"rhythmbox" "rsync" "ruby" "zsh" "apache2" "android-tools-adb" "hgtortoise" "hgtortoise-nautilus"
	"android-tools-fastboot" "hardinfo" "docky" "evolution"
	"g++" "gcc" "ftp" "js" "curl" "wget" "gparted" "golang" "htop" "mysql-server"
	"mysql-workbench" "php5" "git" "mercurial" "vim" ""
	"openssh-server" "php5" "php5-curl" "php5-gd" "python" "python2.7" "python3" "pulseaudio"
)
for (( i = 0; i < ${#packages[@]}; i++ )); do
	echo "Installing Package:" ${packages[i]}
	sudo apt-get install -y ${packages[i]}
done
#Oh my  ZSH
echo "Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
	
echo "[x] Installing All Local Deps Depedencies"
./sub/installBin.sh
./sub/installDPKG.sh



echo "Installing Remote Depedencies"
while true; do
    read -p "Do you want to install jdownloader? y/n " yn
    case $yn in
		[Yy]* )	echo "Installing jdownloader" && wget "http://installer.jdownloader.org/JD2Setup_x64.sh" && sudo chmod 777 JD2Setup_x64.sh && ./JD2Setup_x64.sh && rm JD2Setup_x64.sh && break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


#PHP Composer
echo "Installing PHP Depedencies"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

#Ruby Zeug
echo "Installing Ruby Depedencies"
gem install compass &


echo "[*] Initzialize Private Project stuff"
languages=(
	python lamp angular firebase noob2hero chrome nodeapps customer
)

read -p "Enter pro" -i "projects" prhome
echo "Making Dir:"$prhome
mkdir ~/$prhome
if [[ $? ]]; then
	exit 
fi
cd ~/$prhome

#NPM Zeug
echo "Installing Node Depedencies"
./sub/nodeStack.sh
exit

for (( i = 0; i < ${#languages[@]}; i++ )); do
	echo "\t Creating Project dir:" ${languages[i]}
	mkdir ${languages[i]}
done

#github repos
while true; do
    read -p "Do you want to add git repos?" yn
    case $yn in
        [Yy]* ) ./sub/git.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done