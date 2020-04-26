#!/bin/bash

echo "***************************"
echo "****PUSHING IMAGE**********"

IMAGE="jenkins_demo_project"

echo "****LOGGING IN******"

docker login -u 1410184 -p $PASS

echo "*******TAGGING IMAGE*******"

docker tag $IMAGE:$BUILD_TAG 1410184/$IMAGE:$BUILD_TAG

echo "******PUSHING IMAGE***********"

docker push 1410184/jenkins_demo_project:$BUILD_TAG
