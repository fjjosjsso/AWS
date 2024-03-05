#!/bin/bash

USERID=$(id -u)
validate (){
    if [ $? -ne 0 ]
    then 
        echo " $1 ........failure"
    else
        echo "$1............successfull"
    fi
}
if [ $USERID -ne 0 ]
then
    echo "Your are not in root access"
else
    echo "Your are in root access"
fi
validate "Installing Postfix"
yum install postfix -y
validate "installing Mysql"
yum install mysql -y
