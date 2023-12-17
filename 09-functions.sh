#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if[$1 -ne 0]
    
        echo " ERROR $2 is Failed"
        exit 1
    else
        echo "$2 is Succuess"
    fi
}

if [$ID -ne 0]

    echo "You are not a root user"
    exit 1
else
    echo " You are a root user"
fi

yum install mysql -y

VALIDATE $? "Installing Mysql"

Yum install git -y

VALIDATE $? "Installing git"

