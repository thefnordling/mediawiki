#!/bin/bash
cd /tmp
wget https://extdist.wmflabs.org/dist/extensions/VisualEditor-REL1_34-74116a7.tar.gz
tar -xzvf /tmp/VisualEditor-REL1_34-74116a7.tar.gz -C /opt/bitnami/mediawiki/extensions
wget https://github.com/simplesamlphp/simplesamlphp/releases/download/v1.18.7/simplesamlphp-1.18.7.tar.gz
tar -xzvf simplesamlphp-1.18.7.tar.gz
mv simplesamlphp-1.18.7 /etc/simplesamlphp
sed -i "s/'123'/$SIMPLESAML_ADMIN_PWD/g" /etc/simplesamlphp/config/config.php
ln -sf /etc/simplesamlphp/www /opt/bitnami/mediawiki/simplesaml
