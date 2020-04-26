#!/bin/bash

echo "*************************************"
echo "** TESTING THE CODE *********************"
echo "*************************************"

# WORKSPACE=/var/lib/jenkins/workspace/shop-maven-pipeline


docker run --rm -v $PWD/stockmanager:/stockmanager-s -v /root/.m2/:/root/.m2/ -w /stockmanager-s maven:latest "$@"

