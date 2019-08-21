#!/bin/bash
directorName=$1
directorIP=$2
directorPort=$3
INSTALLDIR=$4
sslenabled=$5

printf "\n${directorIP} ${directorName}" > director.txt
cat director.txt >> /etc/hosts

cd $INSTALLDIR

printf "\n${directorIP} ${directorName}" >> director.txt
printf "sslEnabled: ${sslenabled}" >> director.txt

cd ./datasynapse/engine


    printf "\nsslenabled == false " >> director.txt
   ./configure.sh -s ${directorName}:${directorPort}

./engine.sh start

