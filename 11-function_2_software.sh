#!/bin/bash

validate () {
    if [ $2 -ne 0 ]
    then
        echo "$2 .....failure"
    else
        echo "$2......successful"
    fi
}
if [ $1 -ne 0 ]
then
    echo "Your are not in root access"
    else
        echo "Your are in root access"
    fi
    validate $? "Installing MYSQL"
    yum install mysql -y
    validate $? "installing postfix"
    yum install postfix -y
