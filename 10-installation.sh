#!/bin/bash

USERID=$(id -u)
 
if [ $USERID -ne 0 ]
then 
    echo "Please run  this script with root access"
exit 10 #manually exit if error comes
else
    echo "running with root user"
fi

dnf install mysql-y

if [ $? -ne 0 ]
then 
    echo "Installation of mysql --failure"
    exit 1
    
else
    echo "Installation of mysql --success"
fi

dnf install git -y

if [ $? -ne 0]
then 
    echo "Installation of git --failure"
    exit 1
    
else
    echo "Installation of git --success"
fi