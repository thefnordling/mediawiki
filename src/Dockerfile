FROM bitnami/mediawiki
USER root
ADD entrypoint-with-visual-editor.sh /
RUN chmod +x /entrypoint-with-visual-editor.sh
WORKDIR /tmp
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://extdist.wmflabs.org/dist/extensions/VisualEditor-REL1_34-74116a7.tar.gz
USER 1001
ENTRYPOINT [ "/entrypoint-with-visual-editor.sh" ]
CMD [ "/opt/bitnami/scripts/apache/run.sh" ]