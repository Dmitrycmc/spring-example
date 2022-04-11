#!/usr/bin/env sh

/usr/bin/java -Xmx256m -Xss512k -XX:-UseContainerSupport \
              -jar /app/app.jar \
              --SPRING_DEMO_1_URL: http://0.0.0.0:8081 \
              --SPRING_DEMO_2_URL: http://0.0.0.0:8082