#!/bin/bash
clear
while true
do
echo "Welcome to the Penetration Test Scanning Suite Menu!"
echo "Please enter one of the numbers as an option:"
echo "1. NMAP scans"
echo "2. Nikto Scans"
echo "3. Uniscan Scan"
echo "4. Nessus Scan"
echo "5. Burp Suite Scan"
echo "Type exit or CTRL+C to exit program"
printf "#> "
read RESPONSE
echo " "
case $RESPONSE in

"1")
  ./nmapscans.sh
   clear;;
"2")
  ./niktoscans.sh;;
"3")
  ./uniscans.sh;;
"4")
  ./nessusscans.sh;;
"5")
  ./burpscans.sh;;
"exit")
  exit 0;;
"*")
  clear;;
esac
echo " "
done
