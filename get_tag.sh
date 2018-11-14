#!/usr/bin/bash
tag=`git describe --tag`
echo $tag >> temp.txt
