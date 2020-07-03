FROM java:8
MAINTAINER cyw
#复制target/spring-boot-web-demo.jar到容器里WORKDIR下
COPY target/AuthShiro.jar AuthShiro.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","AuthShiro.jar"]