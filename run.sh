#!/usr/bin/env bash

cp -r /root/.ssh ssh
docker-compose up -d
rm -rf ssh