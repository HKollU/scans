#!/bin/bash
echo "Building dockerfile"
docker build -t dockscan .
echo "Pulling relevant dockerfile(s)."
docker pull tenableofficial/nessus
echo "Getting burpsuite"
$(wget https://portswigger.net/burp/releases/download?product=community&version=2021.2.1&type=Jar)
echo "DONE BUILDING!!!"
exit 0
