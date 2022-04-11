#!/usr/bin/env sh

/usr/bin/java -Xmx256m -Xss512k -XX:-UseContainerSupport \
              -jar /app/app1.jar & \

/usr/bin/java -Xmx256m -Xss512k -XX:-UseContainerSupport \
              -jar /app/app2.jar & \

/usr/bin/java -Xmx256m -Xss512k -XX:-UseContainerSupport \
              -jar /app/gateway.jar \
              --SPRING_DEMO_1_URL: http://localhost:8081 \
              --SPRING_DEMO_2_URL: http://localhost:8082
