#!/bin/bash
echo "Running UniScan, this may take a while..."&&uniscan -u https://cora-vuetify-dev.herokuapp.com/login/ -qd >Uni_Scan.txt && cat Uni_Scan.txt
