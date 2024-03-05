#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: Your not in root access kindly go through to root access"
    exit 2
else
    echo "Your are in root user"
fi 
yum install mysql -y
