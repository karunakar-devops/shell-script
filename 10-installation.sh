#!/bin/bash

USERID=($id -u)
 
 if [ $USERID -ne 0 ]
 then 
    echo "need to run with root access"
else
    echo "running with root user"
fi

dnf install mysql -y