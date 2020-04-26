#!/bin/bash

echo "*************************************"
echo "** BUILDING JAR *********************"
echo "*************************************"

# WORKSPACE=/var/lib/jenkins/workspace/shop-maven-pipeline


docker run --rm -v $PWD/stockmanager:/stockmanager-s -v /root/.m2/:/root/.m2/ -w /stockmanager-s maven:latest "$@"



