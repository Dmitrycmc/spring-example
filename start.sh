#!/usr/bin/env sh

/usr/bin/java -jar /app/app1.jar & \

/usr/bin/java -jar /app/app2.jar & \

/usr/bin/java -jar /app/gateway.jar \
              --SPRING_DEMO_1_URL: http://localhost:8081 \
              --SPRING_DEMO_2_URL: http://localhost:8082
