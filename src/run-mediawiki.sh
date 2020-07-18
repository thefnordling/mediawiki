#!/bin/bash
docker stop mediawiki
docker container prune -f
docker run -d \
--name=mediawiki \
--network mediawiki \
-p 8080:8080 \
-v $(pwd)/data/mediawiki:/bitnami/mediawiki \
-e MEDIAWIKI_DATABASE_HOST=these-are-required \
-e MEDIAWIKI_DATABASE_NAME=by-the-bitnami-dockerfile \
-e MEDIAWIKI_DATABASE_USER=but-are-ignored-since \
-e MEDIAWIKI_DATABASE_PASSWORD=we-set-the-values-directly-in-LocalSettings.php \
--restart=unless-stopped \
testing:why
