#!/bin/bash -x

# Do Login

curl -X POST -H "Content-Type: application/json" -d "{ \"uid\": \"$DCOS_USER\", \"password\": \"$DCOS_PASSWORD\" }" "http://$DCOS_MASTER/acs/api/v1/auth/login"

# Do Post marathon.json to DC/OS

curl -X POST -H "Content-Type: application/json" -f marathon.json "http://$DCOS_MASTER/marathon/v2/apps"
