#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERROR: You are not in root access so kinldy go for root access"
    exit 2
else
    echo "Your are in root access"
fi
yum install mysql -y

Checkstatus=$($?)
if [ $Checkstatus -ne 0 ]
then
    echo "Mysql was not installed try form root access"
    exit 2
else
    echo "Mysql was successfully installed"
fi
