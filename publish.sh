#!/bin/bash
rm  -rf release
mkdir release
mkdir release/templates
cp -R templates release
cp package.json release/package.json
cp tailor.js release/tailor.js
sed -i '' -e 's/localhost:3000/fragment-chat:3000/g' release/templates/index.html
sed -i '' -e 's/localhost:5000/fragment-contacts:5000/g' release/templates/index.html
sed -i '' -e 's/localhost:8081/fragment-header:8081/g' release/templates/index.html
