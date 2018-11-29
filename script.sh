#!/usr/bin/bash
export dt="${bamboo.dt}"
export version="${bamboo.version}"
echo $dt
echo $version
sed "s/^Build .*$/Build date : $dt/" "version.txt"
sed "s/^Version .*$/Version : $version/" "version.txt"
