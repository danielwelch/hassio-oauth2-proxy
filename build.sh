#!/bin/bash
set -ev

if [ -z "${TRAVIS_TAG}" ]; then
    echo "Untagged build found. Building oauth2-proxy with tag 'test'"
    # build oauth2-proxy
    docker run -it --rm --privileged --name "${ADDON_NAME}" \
        -v ~/.docker:/root/.docker \
        -v "$(pwd)":/docker \
        hassioaddons/build-env:latest \
        --target "${ADDON_NAME}" \
        --tag-test \
        --all \
        --from "homeassistant/{arch}-base" \
        --author "Daniel Welch <dwelch2102@gmail.com>" \
        --doc-url "${GITHUB_URL}" \
        --login "${DOCKER_USERNAME}" \
        --password "${DOCKER_PASSWORD}" \
        --parallel
else
    echo "New git tagged build found. Building oauth2-proxy with tag 'latest'."
    docker run -it --rm --privileged --name "${ADDON_NAME}" \
        -v ~/.docker:/root/.docker \
        -v "$(pwd)":/docker \
        hassioaddons/build-env:latest \
        --target "${ADDON_NAME}" \
        --tag-latest \
        --all \
        --from "homeassistant/{arch}-base" \
        --author "Daniel Welch <dwelch2102@gmail.com>" \
        --doc-url "${GITHUB_URL}" \
        --login "${DOCKER_USERNAME}" \
        --password "${DOCKER_PASSWORD}" \
        --parallel
fi
echo "Local Docker build successful."
