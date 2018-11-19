#!/usr/bin/bash
#repo="Hello-Jenkins HelloWorldJava"
echo ${bamboo.repo}
for i in ${bamboo.repo}
	do
		echo "Cloning the $i repo"
		git clone https://github.com/pankajja/$i.git
		echo "The latest tag for repo $i is" >> temp.txt
		cd $i 
		git describe --tags --abbrev=0 >> ../temp.txt
		cd ../
		rm -rf $i
	done
