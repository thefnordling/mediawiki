#!/bin/bash
docker container prune -f
docker image prune -f
docker build -t mw:latest .