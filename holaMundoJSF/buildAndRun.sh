#!/bin/sh
mvn clean package && docker build -t com.mycompany/holaMundoJSF .
docker rm -f holaMundoJSF || true && docker run -d -p 9080:9080 -p 9443:9443 --name holaMundoJSF com.mycompany/holaMundoJSF