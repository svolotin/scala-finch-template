#!/bin/bash
# Sami

sbt compile
if [ $? -ne 0 ];then
    echo "Unit tests of build is failed"
    exit 1
fi
sbt universal:packageBin

if [ $? -ne 0 ];then
    echo "packaging artifact failed"
    exit 1
fi
docker-compose build

if [ $? -ne 0 ];then
    echo "docker-compose failed"
    exit 1
fi