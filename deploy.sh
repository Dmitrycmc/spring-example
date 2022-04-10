#!/bin/sh


cp ./target/spring-example-0.0.1-SNAPSHOT.jar app.jar && \

echo "Started pushing" && \
git add . && git commit -m Deploy && git push heroku master -f && \
echo "Finished pushing" && \

git reset --hard HEAD^ && \
echo "Success!" || echo "Failure"