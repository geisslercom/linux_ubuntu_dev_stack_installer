#!/bin/bash

echo "[*] Initzialize Private Project stuff"

languages=(python lamp angular firebase noob2hero chrome nodeapps customer)

read -p "Enter projekt folder name: " -i "projects" prhome
echo "Making Dir:"$prhome
mkdir ~/$prhome
cd ~/$prhome


for (( i = 0; i < ${#languages[@]}; i++ )); do
	echo "\t Creating Project dir:" ${languages[i]}
	mkdir ${languages[i]}
done

#github repos
echo "[*] Making SSH Keys"
echo "[*] Please enter a passphrase if u want"
ssh-keygen -t rsa -f ~/.ssh/bGit
echo "[*] Please copy this key below and paste it on https://github.com/settings/ssh"
cat ~/.ssh/bGit.pub
echo "[*] Creating temp git dir in ~/"$prhome"/unsorted_githubrepos"

read -p "Enter Github username: " ghUser

echo "[*] Creating temp git dir in ~/"$prhome"/unsorted_githubrepos"
mkdir ~/$prhome/unsorted_githubrepos
curl -s --user $ghUser:$ghPass https://api.github.com/users/geisslercom/repos > .tmpGHrepos
< .tmpGHrepos jq '.[].ssh_url' >> ~/$prhome/unsorted_githubrepos/.tmpGHrepos
rm .tmpGHrepos

cd ~/$prhome/unsorted_githubrepos

cat .tmpGHrepos | while read line
do
	echo $line
	git clone $line -key ~/.ssh/bGit.pub
done

#rm .tmpGHrepos