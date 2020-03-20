#!/bin/bash
if [ $# -ne 2 ];then
	echo $0 "srcpatch srcrpm"
	exit
fi
mkdir /tmp/kpatch
patchfile=/tmp/kpatch/$(date +"%Y-%m-%d-%H:%M:%S").patch
touch $patchfile
pushd $1
for file in $(find | grep -E "*\.new")
do
	diff -Nupr ${file%.*} $file >> $patchfile
done
popd
kpatch-build -t vmlinux -r $2 $patchfile --skip-gcc-check
rm -rf /tmp/kpatch
