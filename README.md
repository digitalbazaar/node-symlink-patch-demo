# node-symlink-patch-demo

## The Patch / Pull Request
https://github.com/nodejs/node/compare/v5.x...digitalbazaar:symlink

## Installation
```
./setup.sh
```

## Directory Structure
```
|-- node_modules
    |-- mod-a
    |   |-- node_modules
    |       |-- lodash@4
    |       |-- mod-b (symlink to ../../mod-b)
    |-- mod-b
    |-- lodash@2
```

## Run the Demo
```
npm start
```
### Non-patched Node Behavior
`require('lodash')` in `mod-b` will resolve to lodash@2 and output:
```
MOD_B LODASH VERSION: 2.4.2
MOD_A LODASH VERSION: 4.6.1
```
### Patched Node Behavior
`require('lodash')` in `mod-b` will resolve to lodash@4 and output:
```
MOD_B LODASH VERSION: 4.6.1
MOD_A LODASH VERSION: 4.6.1
```
