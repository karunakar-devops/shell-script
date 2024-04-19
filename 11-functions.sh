#!/bin/bash

USERID=$(id -u)

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo $2 --- failure
    exit 1
else
    echo $2 --- success

}
 
if [ $USERID -ne 0 ]
then 
    echo "Please run  this script with root access"
exit 10 #manually exit if error comes
else
    echo "running with root user"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL"

dnf install git -y
VALIDATE $? "Installing GIT"
