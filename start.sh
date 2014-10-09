#!/bin/bash
: ${SULTANS_ZIP:=master}

cd /sultans && curl -LO $SULTANS_ZIP && unzip /sultans/$SULTANS_ZIP && cd /sultans/sultans-$SULTAN_ZIP && npm install && node server.js
