#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
cp Dockerfile release/Dockerfile
sed -i '' -e 's/5000/49161/g' release/fragment.js
sed -i '' -e 's/localhost/fragment-contacts.bar/g' release/fragment.js
