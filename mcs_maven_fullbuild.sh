#!/bin/bash
export HOME=/home/ec2-user
echo compiling maven
sh $HOME/sunitha.sh
if [ $?==0 ]; then
   echho compilatioan of maven success
else 
 echo faileed
exit 1
fi
echo compiling microservices
sh $HOME/microserives1.sh
if [ $?==0 ];then
  echo compilation of mcs success
else
 echo failed
exit 1
fi
