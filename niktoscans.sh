#!/bin/bash
echo "Running Nikto Scan, this may take a while..."&&docker container run -it dockscan nikto -Display 1234V -h cora-vuetify-dev.herokuapp.com >niktoScan.txt &&echo "------------------------------" && cat niktoScan.txt&& echo "------------------------------"
while true
do
echo "done reviewing results?"
echo "Enter anything to return to menu"
printf "#> "
read NIKOPT
case #NIKOPT in
"*")
exit 0;
done
