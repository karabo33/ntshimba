#!/bin/bash

dir = "labs"
link = "html"
page = "index.html"

echo "--------------------"
echo "CREATING A NGINX SCRIPT"
echo "--------------------"
echo "creating a script..."
sleep 1

if(systemctl is-active nginx)
then
    echo "---------------"
    echo "NGINX IS ACTIVE"
    echo "----------------"
    sleep 1
    echo "Creating a directory"
    mkdir /var/www/html/labs
    sleep 1
   echo "-----------------------------"
   echo "DIRECTORY SUCCEFULLY CREATED"
    echo "----------------------------"
    sleep 1
    echo "Changing Ownership"
    chown karabo&zofo:root /var/www/html/labs
    echo "----------------------------"
    echo "OWNERSHIP SUCCESSFULLY CHANGED"
    echo "----------------------------"
    sleep 1
    echo "creating a symbolic link"
    ln -s /var/www/html/labs /home/karabo&zofo/html
    echo "-----------------------------"
    echo "SYMBOLIC LINK SUCCESSFULLY CREATED"
    echo "-----------------------------"
    sleep 1
    echo "Creating test page"
    cat ...html$page
else
    echo "NGINX IS NOT ACTIVE"
    exit 1
