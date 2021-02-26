#!/bin/bash
echo "Running Nikto Scan, this may take a while..."&&nikto -Display 1234V -h cora-vuetify-dev.herokuapp.com >niktoScan.txt && cat niktoScan.txt
