FROM java:8
MAINTAINER cyw
#复制target/spring-boot-web-demo.jar到容器里WORKDIR下

RUN mkdir -p /opt/apps

ENV app = AuthShiro-1.0.0.jar

ADD target/$app /opt/apps

EXPOSE 9090

ENTRYPOINT ["sh","-c","java","-jar","$app"]