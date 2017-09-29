#!/bin/bash
# Ubuntu startup script for the lab

LAB_NAME="SE-CERT-BRUM-L1-Lab2"
LAB_DIR="/home/ubuntu/$LAB_NAME/"
AGENT_DIR="/home/ubuntu/appdynamics/AppServerAgent-4.3.5.10"

cd $LAB_DIR

echo "Updating lab source from git"
git pull

cd $LAB_DIR/mybanking

echo "Building the app"
mvn clean package

echo "Starting the app"
java \
  -Dappdynamics.controller.hostName=localhost \
  -Dappdynamics.controller.port=8090 \
  -Dappdynamics.controller.ssl.enabled=false \
  -Dappdynamics.agent.accountName=customer1 \
  -Dappdynamics.agent.accountAccessKey=198633ef-0dc4-45ad-8f57-5c42f4f48842 \
  -Dappdynamics.agent.applicationName=MyBankingApp \
  -Dappdynamics.agent.tierName=MyBankingTier \
  -Dappdynamics.agent.reuse.nodeName=true \
  -Dappdynamics.agent.reuse.nodeName.prefix=MyBanking \
  -javaagent:$AGENT_DIR/javaagent.jar \
  -jar target/mybanking-1.0.jar
