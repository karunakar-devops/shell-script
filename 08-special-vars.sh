#!/bin/bash

echo "All varaibles:$@"
echo "No of varaibles Passed:$#"
echo "current working directory:$PWD"
echo "which user running this script:$USER"
echo "Home directory of user:$HOME"
echo "Hostname:$HOSTNAME"
echo "scriptname:$0"
echo "Process ID of the current shell script:$$"
sleep 60&
echo "Process ID of last background command:$!"
