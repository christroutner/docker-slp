#!/bin/bash

cd ~/Electron-Cash-SLP-3.4.3
./electron-cash daemon -v &
sleep 10
echo "LOADING WALLET"
./electron-cash daemon load_wallet

cd
node dummyapp.js
