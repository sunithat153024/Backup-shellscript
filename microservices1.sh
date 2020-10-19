#!/bin/bash
export HOME=/home/ec2-user
rm -rf microservices
git clone git@github.com:sunithat153024/microservices.git microservices
cd microservices
mvn clean install
echo "build success"
rm -rf /$HOME/output_mcs/*.jar
rm -rf /$HOME/test_mcs/*.jar
cp /$HOME/microservices/target/*.jar /$HOME/output_mcs
cp /$HOME/microservices/target/*.jar /$HOME/test_mcs

