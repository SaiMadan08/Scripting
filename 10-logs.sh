#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e31m"
G="\e32m"
Y="\e33m"
N="\e0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ &1 -ne 0 ]
    then
        echo "ERROR $2 is $R Failed $N"
    else
        echo "$2 is $G Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "$R You are not a root user $N"
else
    echo "$G You are a root user $N"
fi

yum install mysql -y
VALIDATE $? "INSTALLING mysql"

yum install git -y
VALIDATE $? "INSTALLING git"