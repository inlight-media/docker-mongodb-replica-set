#!/bin/bash

# Create database directories
mkdir /data/db/db-001
mkdir /data/db/db-002
mkdir /data/db/db-003

# Run mongo replica sets using config files
mongod --config /conf/mongod_1.conf
mongod --config /conf/mongod_2.conf
mongod --config /conf/mongod_3.conf

# Run mongo as the running process, this is required to keep the docker process running
mongo