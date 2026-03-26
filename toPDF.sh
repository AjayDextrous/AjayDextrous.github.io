#!/bin/bash

REPO_DIR=$(pwd)

cd _site && python3 -m http.server 4243 --bind 127.0.0.1 > /dev/null 2>&1 &
SERVER_PID=$!
sleep 1

"$REPO_DIR/node_modules/.bin/phantomjs" "$REPO_DIR/toPDF.js" 'http://127.0.0.1:4243/cv/' "$REPO_DIR/files/Ajay_Narayanan.pdf" A4

kill $SERVER_PID 2>/dev/null; true
