#!/bin/bash
echo "Building dockerfile"
docker build -t dockscan .
echo "Pulling relevant dockerfile(s)."
docker pull tenableofficial/nessus
echo "Getting burpsuite"
$(wget -o https://portswigger.net/burp/releases/download?product=community&version=2021.2.1&type=Jar>burpsuite_community_v2021.2.1.jar)
echo "DONE BUILDING!!!"
exit 0
