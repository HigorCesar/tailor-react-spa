#!/bin/bash
rm  -rf release
mkdir release
mkdir release/public
cp -R public release
cp package.json release/package.json
cp fragment.js release/fragment.js
cp Dockerfile release/Dockerfile