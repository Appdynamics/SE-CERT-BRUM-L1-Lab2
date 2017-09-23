FROM maven:3.5.0-jdk-8-alpine

# Usage. This dockerfile expects to have environment variables.
# docker build -t NAME . --force-rm --no-cache
# docker run --env-file=appdynamics.env -p 8080:8080 NAME

RUN apk --update upgrade && \
    apk add --no-cache bash ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

WORKDIR /app
COPY . /app
VOLUME /root/.m2/repository

WORKDIR mybanking
RUN mvn clean package

CMD java \
  -Djava.security.egd=file:/dev/./urandom \
  -Dappdynamics.agent.reuse.nodeName=true \
  -Dappdynamics.agent.reuse.nodeName.prefix=MyBanking \
  -javaagent:/app/javaagent/javaagent.jar \
  -jar target/mybanking-1.0.jar
