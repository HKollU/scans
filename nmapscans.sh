#!/bin/bash
clear
while true
do
echo "This is the NMAP scan menu,"
echo "Please enter an option to begin an NMAP scan: "
echo "1. Basic Scan"
echo "2. TCP SYN Scan (requires root)"
echo "3. TCP ACK Scan (requires root)"
echo "4. Service Version Scan"
echo "5. Default NSE Script Scan"
echo "6. Aggressive Scan"
echo "Enter 'r' to return to main menu."
printf "#> "
read NMAPOPTION
case $NMAPOPTION in

"1")
echo "Running basic scan, this may take a while..."
nmap -v cora-vuetify-dev.herokuapp.com>BasicScan.txt &&echo "------------------------------"&& cat BasicScan.txt&&echo "------------------------------";;
"2")
echo "Running TCP SYN scan, this may take a while..."
nmap -v -sS cora-vuetify-dev.herokuapp.com>TCPSYNScan.txt &&echo "------------------------------"&& cat TCPSYNScan.txt&&echo "------------------------------";;
"3")
echo "Running TCP ACK scan, this may take a while..."
nmap -v -sA cora-vuetify-dev.herokuapp.com>TCPACKScan.txt &&echo "------------------------------"&& cat TCPACKScan.txt&&echo "------------------------------";;
"4")
echo "Running Service Version scan, this may take a while..."
nmap -v -sV -version-intensity 5 cora-vuetify-dev.herokuapp.com>ServiceScan.txt &&echo "------------------------------"&& cat ServiceScan.txt&&echo "------------------------------";;
"5")
echo "Running default NSE script scan, this may take a while..."
nmap -v -sC cora-vuetify-dev.herokuapp.com>ScriptScan.txt &&echo "------------------------------"&& cat ScriptScan.txt&&echo "------------------------------";;
"6")
echo "Running Aggressive scan, this may take a while..."
nmap -v -A cora-vuetify-dev.herokuapp.com>AggressiveScan.txt && echo "------------------------------"&&cat AggressiveScan.txt&&echo "------------------------------";;
"r")
clear
exit 0;;
"*")
echo " "
echo "Please Enter an option [1-6, r]."
echo " ";;
esac
echo " "
echo " "
done
