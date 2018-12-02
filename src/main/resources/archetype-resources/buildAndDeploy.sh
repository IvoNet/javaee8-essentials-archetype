#!/bin/sh
#deploy="false"
deploy="true"
image=${artifactId}
#version=latest
version=${version}

OPTIONS=""
OPTIONS="--no-cache --force-rm"
#OPTIONS="--no-cache"
#OPTIONS="--force-rm"

docker build ${OPTIONS} -t ivonet/${artifactId}:${version} .
if [ "$?" -eq 0 ] && [ ${deploy} == "true" ]; then
    docker push ivonet/${image}:${version}
fi