#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "ERROR: Your not in root user kindly go through in root user"
    exit 2
else
    echo "Your in root user"
fi
