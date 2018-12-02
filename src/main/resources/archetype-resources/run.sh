#set( $symbol_pound = '#' )
#set( $symbol_dollar = '$' )
#set( $symbol_escape = '\' )
#!/usr/bin/env bash

RUNNING=$(docker inspect --format="{{ .State.Running }}" jee 2> /dev/null)
if [ $? -eq 1 ] || [ "$RUNNING" == "false" ]; then
    rm -rfv ./artifact/*.war

    docker run \
     -d \
     --rm \
     --name jee \
     -p 8080:8080 \
     -p 9990:9990 \
     -v "$(pwd)/artifact:/deployments" \
     ivonet/wildfly:14.0.1.Final

    echo "Admin console credentials:"
    echo "Usr: admin"
    echo "Pwd: s3cr3t"

    mvn clean package
else
    /usr/bin/osascript -e 'display notification "Stopping..." with title "jee"'
    docker rm -f jee
fi

