#!/usr/bin/bash
#export dt="${bamboo.dt}"
#export version="${bamboo.version}"
echo $dt
echo $version
sed -e "s/^Build .*$/Build date : $dt/" ./version/version.txt
sed -e "s/^Version .*$/Version : $version/" ./version/version.txt
