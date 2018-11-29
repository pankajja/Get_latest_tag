#!/usr/bin/bash
#export dt="${bamboo.dt}"
#export version="${bamboo.version}"
#echo $dt
#echo $version
if [[ -z "$dt" ]] && [[ -z "$version" ]] ; then
	echo "string is empty , nothing to change"
else
	if [[ -z "$version_name" ]]; then
		echo "string is empty , nothing to change"
	else
		sed -i -e "s/^Build .*$/Build date : $dt/" ./version/version.txt
		sed -i -e "s/^Version .*$/Version : $version/" ./version/version.txt
		echo "version Name :" $version_name\_$version >> ./version/version.txt
	fi
fi 
