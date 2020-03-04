#!/bin/bash
rm  -rf release
mkdir release
mkdir release/templates
cp -R templates release
cp package.json release/package.json
cp tailor.js release/tailor.js
cp .env release/.env
cp -R lib release
sed -i '' -e 's/localhost:3000/fragment-chat.sandbox.leaseplan.io/g' release/templates/index.html
sed -i '' -e 's/localhost:6006/fragment-common.sandbox.leaseplan.io/g' release/templates/index.html
sed -i '' -e 's/localhost:5000/fragment-contacts.sandbox.leaseplan.io/g' release/templates/index.html
sed -i '' -e 's/localhost:8081/fragment-header.sandbox.leaseplan.io/g' release/templates/index.html

