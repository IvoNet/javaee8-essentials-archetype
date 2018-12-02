#!/bin/sh
rm -rfv ./artifact/*.war
mvn clean package
RUNNING=$(docker inspect --format="{{ .State.Running }}" ${artifactId} 2> /dev/null)
if [ $? -eq 1 ] || [ "$RUNNING" == "false" ]; then
    docker run \
     -d \
     --rm \
     --name ${artifactId} \
     -p 8080:8080 \
     -p 9990:9990 \
     -v "$(pwd)/artifact:/deployments" \
     ivonet/wildfly:14.0.1.Final

    echo "Admin console credentials:"
    echo "Usr: admin"
    echo "Pwd: s3cr3t"

else
    /usr/bin/osascript -e 'display notification "Stopping..." with title "${artifactId}"'
    docker rm -f ${artifactId}
fi

