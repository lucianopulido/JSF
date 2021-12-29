@echo off
call mvn clean package
call docker build -t com.mycompany/holaMundoJSF .
call docker rm -f holaMundoJSF
call docker run -d -p 9080:9080 -p 9443:9443 --name holaMundoJSF com.mycompany/holaMundoJSF