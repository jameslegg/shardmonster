#!/bin/bash
sleep 20
mongo controller:27017 --eval 'rs.initiate()'
mongo config:27019 --eval 'rs.initiate()'
mongo replica:27018 --eval 'rs.initiate()'
sleep 45
mongo mongos:27017 --eval 'sh.addShard("replica-1/replica:27018")'
