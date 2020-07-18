#!/bin/bash
docker container prune -f
docker run -d \
--name=mediawiki-mariadb \
--network mediawiki \
-v $(pwd)/data/mariadb:/bitnami/mariadb \
-e MARIADB_ROOT_PASSWORD=password \
-e MARIADB_USER=mediawiki \
-e MARIADB_PASSWORD=password \
-e MARIADB_DATABASE=mediawiki \
--restart=unless-stopped \
bitnami/mariadb:10.5