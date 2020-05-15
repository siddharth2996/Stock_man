!#/bin/bash

# copy the new jar to build location  

cp -f stockmanager/target/*.jar jenkins/build/

echo "*********************************"

echo " BUILDING DOCKER IMAGE "

cd jenkins/build/ && docker-compose -f docker-compose2-build.yml build --no-cache
