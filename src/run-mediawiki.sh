#!/bin/bash
docker stop mediawiki
docker container prune -f
docker run -d \
--name=mediawiki \
--network mediawiki \
-p 8080:8080 \
-v $(pwd)/data/mediawiki:/bitnami/mediawiki \
--env MEDIAWIKI_DATABASE_HOST=mediawiki-mariadb \
--env MEDIAWIKI_DATABASE_NAME=mediawiki \
--env MEDIAWIKI_DATABASE_USER=mediawiki \
--env MEDIAWIKI_DATABASE_PASSWORD=password \
--env MEDIAWIKI_HOST="localhost:8080" \
--restart=unless-stopped \
mw:latest \