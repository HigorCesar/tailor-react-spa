#!/bin/bash
rm  -rf release
mkdir release
mkdir release
mkdir release/templates
cp -R templates release
cp package.json release/package.json
cp tailor.js release/tailor.js
cp Dockerfile release/Dockerfile
