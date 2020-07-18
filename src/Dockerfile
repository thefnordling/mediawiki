FROM bitnami/mediawiki
WORKDIR /tmp
USER root
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://extdist.wmflabs.org/dist/extensions/VisualEditor-REL1_34-74116a7.tar.gz
RUN wget https://extdist.wmflabs.org/dist/skins/MinervaNeue-REL1_34-d0be74a.tar.gz
RUN tar -xzvf MinervaNeue-REL1_34-d0be74a.tar.gz -C /opt/bitnami/mediawiki/skins
RUN tar -xzvf VisualEditor-REL1_34-74116a7.tar.gz -C /opt/bitnami/mediawiki/extensions