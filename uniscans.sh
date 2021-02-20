#!/bin/bash
echo "Running UniScan, this may take a while..."&&uniscan -u https://cora-vuetify-dev.herokuapp.com/login/ -qd >Uni_Scan.txt &&echo "------------------------------" && cat Uni_Scan.txt&& echo "------------------------------"
while true
do
echo "done reviewing results?"
echo "Enter anything to return to menu"
printf "#> "
read UNIOPT
case #UNIOPT in
"*")
exit 0;
done
