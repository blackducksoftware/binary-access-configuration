#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied - tag name required"
    exit 1
fi

input="build-files.txt"

while IFS= read -r var
do
  echo "Updating binary access imports in file $var"
  sed -i "s#https://raw.githubusercontent.com/blackducksoftware/binary-access-configuration/.*/#https://raw.githubusercontent.com/blackducksoftware/binary-access-configuration/$1/#" $var
done < "$input"
