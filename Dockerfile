FROM openjdk:11.0.11

WORKDIR "/"
COPY ./qortal/ /qortal/
ADD docker/start.sh /start.sh

RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN apt-get update && apt -y install at
RUN chmod +x /start.sh
RUN echo 'KEY1=' $KEY1
RUN echo 'KEY2=' $KEY2
RUN at now+1min curl -X POST "http://127.0.0.1:12391/admin/mintingaccounts" -H  "accept: text/plain" -H  "X-API-KEY: 8ciXrsQETuPSk2qan1676N" -H  "Content-Type: text/plain" -d "$KEY1"
RUN at now+1min curl -X POST "http://127.0.0.1:12391/admin/mintingaccounts" -H  "accept: text/plain" -H  "X-API-KEY: 8ciXrsQETuPSk2qan1676N" -H  "Content-Type: text/plain" -d "$KEY2"


EXPOSE 12391
CMD ["/start.sh"]