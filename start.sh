#!/bin/bash
: ${SL_ZIP:=master}

SL_URL=https://github.com/sequenceiq/sultans/archive/$SL_ZIP.zip

if [ -z "$SL_ADDRESS" ] ; then
  # Starting ngrok
  echo "Starting ngrok ..."
  ./bin/ngrok -log=stdout 8080 2>&1>/dev/null &

  echo "Waiting 10 seconds for ngrok ..."
  sleep 10

  echo "Getting the ngrok address ..."
  SL_ADDRESS=$(curl -L http://localhost:4040 | grep -o "http://[0-9a-fA-F]*.ngrok.com")

  echo "Ngrok address: $SL_ADDRESS"
  export SL_ADDRESS=$SL_ADDRESS
fi

cd /sultans && curl -LO $SL_URL && unzip /sultans/$SL_ZIP && cd /sultans/sultans-$SL_ZIP && npm install && node main.js
