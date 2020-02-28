#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
sed -i '' -e 's/localhost:3000/fragment-chat.sandbox.leaseplan.io/g' release/fragment.js

