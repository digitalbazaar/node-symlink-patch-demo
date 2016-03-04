#!/bin/bash
npm install
cd node_modules/mod-a
npm install
ln -s ../../mod-b node_modules/mod-b
cd ../..
