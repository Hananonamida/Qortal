#!/bin/bash
cd /qortal && java -Xmx2G -jar qortal.jar
at now+1min curl -X POST "http://127.0.0.1:12391/admin/mintingaccounts" -H  "accept: text/plain" -H  "X-API-KEY: 8ciXrsQETuPSk2qan1676N" -H  "Content-Type: text/plain" -d "$KEY1"
at now+1min curl -X POST "http://127.0.0.1:12391/admin/mintingaccounts" -H  "accept: text/plain" -H  "X-API-KEY: 8ciXrsQETuPSk2qan1676N" -H  "Content-Type: text/plain" -d "$KEY2"
