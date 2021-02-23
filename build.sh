#!/bin/bash
echo "Building dockerfile"
docker build -t dockscan .
echo "Pulling relevant dockerfile(s)."
docker pull tenableofficial/nessus
echo "Getting burpsuite.  This may take a while or appear to be frozen and it isn't."
wget --output-document "burpsuite_community_v2021.2.1.jar" "https://portswigger.net/burp/releases/download?product=community&version=2021.2.1&type=Jar"
chmod 777 burpsuite_community_v2021.2.1.jar
echo "Done building!!!"
echo "To start program run:sudo ./start.sh"
exit 0
