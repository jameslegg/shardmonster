#!/bin/bash
sleep 20
mongo config:27019 --eval 'rs.initiate()'
mongo replica:27018 --eval 'rs.initiate()'
