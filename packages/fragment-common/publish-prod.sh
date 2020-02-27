#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
cp Dockerfile release/Dockerfile
sed -i '' -e 's/6006/6006/g' release/fragment.js
sed -i '' -e 's/localhost:6006/fragment-common.sandbox.leaseplan.io/g' release/fragment.js

