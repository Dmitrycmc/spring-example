FROM openjdk:11-oraclelinux8

RUN mkdir -p /app
COPY ./spring-demo-1/app.jar /app/app1.jar
COPY ./spring-demo-2/app.jar /app/app2.jar
COPY ./spring-gateway/app.jar /app/gateway.jar
COPY ./start.sh /app/start.sh
RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]