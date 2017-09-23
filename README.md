# Summary
Simple application to illustrate the usage of and troubleshooting with AppDynamics Browser RUM.

There are performance problems built into this app so that someone can learn to use BRUM.

# Usage
* Any of these will work. Pick the startup flavor that's easiest for you.
* Update `appdynamics.env` if using Docker to run the app.

## java
Requires Java 8 and Maven 3.

Build the jar: `mvn clean package`

Execute the jar: `java -jar mybanking/target/mybanking-1.0.jar`

Or include the AppDynamics Java agent. Change properties as necessary.
```
java \
  -Dappdynamics.controller.hostName=XXXXXX.example.com \
  -Dappdynamics.controller.port=8090 \
  -Dappdynamics.controller.ssl.enabled=false \
  -Dappdynamics.agent.accountName=XXXXXXX \
  -Dappdynamics.agent.accountAccessKey=XXXXXXXX \
  -Dappdynamics.agent.applicationName=MyBankingApp \
  -Dappdynamics.agent.tierName=MyBankingTier \
  -Dappdynamics.agent.reuse.nodeName=true \
  -Dappdynamics.agent.reuse.nodeName.prefix=MyBanking \
  -jar mybanking/target/mybanking-1.0.jar
```

## docker
Build the image: `docker build -t lab2 .`

Run the container: `docker run -p 3000:3000 lab2`

## docker-compose
Build and start: `docker-compose up`
