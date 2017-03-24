#!/bin/bash -x

# Do Login

TOKEN=`curl -X POST -H "Content-Type: application/json" -d "{ \"uid\": \"$DCOS_USER\", \"password\": \"$DCOS_PASSWORD\" }" "http://$DCOS_MASTER/acs/api/v1/auth/login" | grep token | awk -F: '{print $2}'`

# Do Post marathon.json to DC/OS

#curl -H "Content-Type: application/json" --data @marathon.json "http://$DCOS_MASTER/marathon/v2/apps"
curl -H "Authorization: token=$TOKEN" -H "Content-Type: application/json" --data @marathon.json "http://$DCOS_MASTER/marathon/v2/apps"
