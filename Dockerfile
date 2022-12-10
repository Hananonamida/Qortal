FROM openjdk:11.0.11

WORKDIR "/"
COPY ./qortal/ /qortal/
ADD docker/start.sh /start.sh
ADD docker/at /bin

RUN chmod +x /start.sh
RUN echo 'KEY1=' $KEY1
RUN echo 'KEY2=' $KEY2

EXPOSE 12391
CMD ["/start.sh"]