#!/bin/bash

cd ~/Electron-Cash-SLP-3.4.3
./electron-cash daemon start -v
sleep 30
echo "LOADING WALLET"
./electron-cash daemon load_wallet

cd
node dummyapp.js
