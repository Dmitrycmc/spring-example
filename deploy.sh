#!/bin/sh

#echo "Started building" && \
#./mvnw clean dependency:list install && \
#echo "Finished building" && \

cd spring-demo-1 && \
cp ./target/spring-demo-1-0.0.1-SNAPSHOT.jar app.jar && \

cd ../spring-demo-2 && \
cp ./target/spring-demo-2-0.0.1-SNAPSHOT.jar app.jar && \

cd ../spring-gateway && \
cp ./target/spring-gateway-0.0.1-SNAPSHOT.jar app.jar && \
cd .. && \

echo "Started pushing" && \
git add . && git commit -m Deploy && git push heroku master -f && \
echo "Finished pushing" && \

git reset --hard HEAD^ && \
echo "Success!" || echo "Failure"