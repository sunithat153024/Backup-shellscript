#!/bin/bash
export HOME=/home/ec2-user
rm -rf newbatchaug
git clone git@github.com:sunithat153024/newbatchaug.git newbatchaug
cd newbatchaug
mvn clean install
echo "build success"
rm -rf /$HOME/output/*.jar
rm -rf /$HOME/test/*.jar
cp /$HOME/newbatchaug/target/*.jar /$HOME/output
cp /$HOME/newbatchaug/target/*.jar /$HOME/test
