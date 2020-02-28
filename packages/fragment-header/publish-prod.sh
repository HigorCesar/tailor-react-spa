#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
sed -i '' -e 's/localhost:8081/fragment-header.sandbox.leaseplan.io/g' release/fragment.js
