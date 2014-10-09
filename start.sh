#!/bin/bash
: ${SL_ZIP:=master}

SL_URL=https://github.com/sequenceiq/sultans/archive/$SL_ZIP.zip

cd /sultans && curl -LO $SL_URL && unzip /sultans/$SL_ZIP && cd /sultans/sultans-$SL_ZIP && npm install && node server.js
