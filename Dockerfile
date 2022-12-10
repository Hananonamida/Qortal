FROM openjdk:11.0.11

WORKDIR "/"

COPY ./qortal /qortal/

ADD docker/start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]