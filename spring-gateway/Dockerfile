FROM openjdk:11-oraclelinux8

RUN mkdir -p /app
COPY ./app.jar /app/app.jar
COPY ./start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]