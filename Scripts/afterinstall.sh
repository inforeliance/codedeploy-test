#!/bin/sh
chown ec2-user /var/www/wwwroot/ -R 
yum -y update
exit 0