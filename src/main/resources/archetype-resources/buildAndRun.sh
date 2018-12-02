#!/bin/sh
mvn clean package && docker build -t ivonet/${artifactId} .
docker rm -f ${artifactId} || true && docker run -d -p 8080:8080 -p 9990:9990 --name ${artifactId} ivonet/${artifactId}
