FROM openjdk:11-oraclelinux8

RUN mkdir -p /app
COPY ./app.jar /app/app.jar
COPY ./start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]