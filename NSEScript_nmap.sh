#!/bin/bash
nmap -v -sC cora-vuetify-dev.herokuapp.com>ScriptScan.txt && cat ScriptScan.txt
