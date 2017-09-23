FROM maven:3.5.0-jdk-8-alpine

# Usage. This dockerfile expects to have environment variables.
# docker build -t NAME . --force-rm --no-cache
# docker run --env-file=appdynamics.env -p 8080:8080 NAME

RUN apk --update upgrade && \
    apk add --no-cache \
      bash \
      unzip \
      ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

# Add and configure the AppDynamics agent
WORKDIR /app
ARG APPDYNAMICS_AGENT_VERSION
COPY AppServerAgent-$APPDYNAMICS_AGENT_VERSION.zip /app/AppServerAgent.zip
RUN unzip AppServerAgent.zip -d AppServerAgent && rm -f AppServerAgent.zip

# Build the executable jar
COPY mybanking /app/mybanking
WORKDIR mybanking
VOLUME /root/.m2/repository
RUN mvn clean package

WORKDIR /app/mybanking
CMD java \
  -Djava.security.egd=file:/dev/./urandom \
  -Dappdynamics.agent.reuse.nodeName=true \
  -Dappdynamics.agent.reuse.nodeName.prefix=MyBanking \
  -javaagent:/app/AppServerAgent/javaagent.jar \
  -jar target/mybanking-1.0.jar
