FROM bitnami/mediawiki
ENV SIMPLESAML_ADMIN_PWD default_simplesaml_admin_password
USER root
ADD entrypoint-with-extras.sh /
RUN chmod +x /entrypoint-with-extras.sh
ADD extras.sh /
RUN chmod +x /extras.sh
RUN apt-get update -y
RUN apt-get install wget -y
ENTRYPOINT [ "/entrypoint-with-extras.sh" ]
CMD [ "/opt/bitnami/scripts/apache/run.sh" ]
