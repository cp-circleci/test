#!/bin/bash -x

# Do Login

curl -X POST -H "Content-Type: application/json" -d '{ "uid": "$DCOS_USER", "password": "$DCOS_PASSWORD" }' "http://$DCOS_MASTER/acs/api/v1/auth/login"
