#!/bin/bash
: ${SL_ZIP:=master}

cd /sultans && curl -LO $SL_ZIP && unzip /sultans/$SL_ZIP && cd /sultans/sultans-$SL_ZIP && npm install && node server.js
