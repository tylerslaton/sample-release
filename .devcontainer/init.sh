#!/bin/bash

if [ ! -z "${ACORN_HUB_TOKEN}" ]; then
  acorn login -p ${ACORN_HUB_TOKEN} ${ACORN_HUB_DOMAIN}
else
  acorn login acorn.io
fi

if [ ! -z "${ACORN_HUB_PROJECT}" ]; then
  acorn project use ${ACORN_HUB_PROJECT}
fi