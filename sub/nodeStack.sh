#!/bin/bash

npmp=(
	"npm" "flightplan"
	"yo" "generator-angularfire" "generator-angular" "generator-chrome-extension" "generator-node-webkit"
	"grunt-cli" "less" "coffee" "mocha"
)

for (( i = 0; i < ${#npmp[@]}; i++ )); do
	echo "\tInstalling Node Package:" ${npmp[i]}
	sudo npm install -d -g ${npmp[i]}
done