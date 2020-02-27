#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
cp Dockerfile release/Dockerfile
sed -i '' -e 's/5000/5000/g' release/fragment.js
sed -i '' -e 's/localhost:5000/fragment-contacts.sandbox.leaseplan.io/g' release/fragment.js

