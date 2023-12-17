#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERROR $2 is $R Failed $N"
        exit 1
    else
        echo -e "$2 is $G Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R You are not a root user $N"
    exit 1
else
    echo -e "$G You are a root user $N"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "INSTALLING mysql"

yum install git -y &>> $LOGFILE
VALIDATE $? "INSTALLING git"