#!/bin/bash

url=www.google.com

status=$(curl -o /dev/null -s -w "%{http_code}" "$url")

if [ $status = 200 ]
then
    echo "$url This URL is working and Status Code is: $status"
else
    echo "$url This URL is not working and Status Code is: $status"
fi
