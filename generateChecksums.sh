#!/bin/bash

files=$(ls $1);
for file in $files
do
	md5sum $1$file | awk -F" " '{print $1}' > $1$file.md5
	sha1sum $1$file | awk -F" " '{print $1}' > $1$file.sha1
done;
