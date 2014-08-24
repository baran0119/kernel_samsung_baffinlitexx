#!/bin/bash

NoPatches=$1

for ((i = 1 ; i < 10 ; i++)); do
	echo "patch -p1 < 000${i}*.patch"
	patch -p1 < 000${i}*.patch
	if [ $i -eq ${NoPatches} ];then
		exit 0
	fi
done

for ((j = 10 ; j < 100 ; j++)); do
	echo "patch -p1 < 00${j}*.patch"
	patch -p1 < 00${j}*.patch
	if [ $j -eq ${NoPatches} ];then
		exit 0
	fi
done

for ((k = 100 ; k < 1000 ; k++)); do
	echo "patch -p1 < 0${k}*.patch"
	patch -p1 < 0${k}*.patch
	if [ $k -eq ${NoPatches} ];then
		exit 0
	fi
done
