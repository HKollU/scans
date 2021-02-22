#!/bin/bash
docker build -t dockscan .
docker pull tenableofficial/nessus
wget https://portswigger.net/burp/releases/download?product=community&version=2021.2.1&type=Jar
echo "DONE BUILDING!!!"
exit 0
