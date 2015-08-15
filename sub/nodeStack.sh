#!/bin/zsh
npmp=(
	"grunt-cli" "less" "coffee" "mocha" "firebase-tools"
	"npm" "flightplan" 
	"yo" "generator-angularfire" "generator-angular" "generator-chrome-extension" "generator-node-webkit"
)

for (( i = 0; i < ${#npmp[@]}; i++ )); do
	echo "\tInstalling Node Package:" ${npmp[i]}
	sudo npm install -d -g ${npmp[i]}
done