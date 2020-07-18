#!/bin/bash
docker stop parsoid
docker container prune -f
docker run -d \
-p 8081:8000 \
--name=parsoid \
--network mediawiki \
--restart=unless-stopped \
-e PARSOID_DOMAIN_localhost=http://mediawiki:8080/api.php \
thenets/parsoid:0.11