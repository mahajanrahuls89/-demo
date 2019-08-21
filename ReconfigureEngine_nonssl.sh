#!/bin/bash
directorName=$1
directorIP=$2
directorPort=$3
INSTALLDIR=$4

cat director.txt >> /etc/hosts

cd $INSTALLDIR

printf "\n${directorIP}  == ${directorName}" >> directorsss.txt

printf "\n${directorPort}" >> directorsss.txt
cd ./datasynapse/engine
./configure.sh -s ${directorName}:8000 -l y

./engine.sh start
