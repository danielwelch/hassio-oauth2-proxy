#!/bin/bash

CONFIG_PATH=/data/options.json

OAUTH2_PROXY_CLIENT_ID=$(jq --raw-output ".client_id" $CONFIG_PATH)
OAUTH2_PROXY_CLIENT_SECRET=$(jq --raw-output ".client_secret" $CONFIG_PATH)
OAUTH2_PROXY_COOKIE_NAME=$(jq --raw-output ".cookie_name" $CONFIG_PATH)
OAUTH2_PROXY_COOKIE_SECRET=$(jq --raw-output ".cookie_secret" $CONFIG_PATH)

oauth2_proxy
