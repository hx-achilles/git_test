#!/bin/bash

./network.sh up createChannel -c mychannel -ca 
sleep 2

./network.sh deployCC -ccn basic -ccp ~/c2 -ccl javascript
sleep 2

cd && cd fabric-samples/asset-transfer-basic/application-javascript && node app.js && mv wallet/ ~/application-java
