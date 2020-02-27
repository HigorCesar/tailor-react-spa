#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
cp Dockerfile release/Dockerfile
sed -i '' -e 's/3000/3000/g' release/fragment.js
sed -i '' -e 's/localhost:3000/fragment-chat.sandbox.leaseplan.io/g' release/fragment.js

