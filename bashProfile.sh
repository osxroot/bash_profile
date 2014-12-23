#!/bin/bash

### install this script with below
### curl -O http://git.io/9OZ_tQ

####-> Bash Profile installer/updater script

## Set variables for profiles you want

part1="jld_profile"
part2="shared_profile"

## End Variables

## Create temp profile

echo "### Mac007 - TopicDesk - Mid Atlantic custom profile" > /tmp/.bash_profile
echo "source $HOME/bashProfile.sh" >> /tmp/.bash_profile


curl -O https://raw.githubusercontent.com/osxroot/bash_profile/master/$part1
curl -O https://raw.githubusercontent.com/osxroot/bash_profile/master/$part2

cat $HOME/$part1 >> /tmp/.bash_profile
cat $HOME/$part2 >> /tmp/.bash_profile


cmp -s $HOME/.bash_profile /tmp/.bash_profile > /dev/null
	if [ $? -eq 1 ]; then
		cat /tmp/.bash_profile > $HOME/.bash_profile
		source $HOME/.bash_profile
		rm /tmp/.bash_profile
	else
		rm /tmp/.bash_profile
	fi

####-> End Script
