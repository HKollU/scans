#!/bin/bash
clear
while true
do
echo "Welcome to the Penetration Test Scanning Suite Menu!"
echo "Please enter one of the numbers as an option:"
echo "1. NMAP scans menu"
echo "2. Start Nikto Scan"
echo "3. Start Uniscan Scan"
echo "4. Start Nessus Service (Access in browser after at https://kali:8834)"
echo "5. Start Burp Suite"
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
