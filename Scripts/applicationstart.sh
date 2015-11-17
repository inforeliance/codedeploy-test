#!/bin/bash
. ~/.bashrc

#export NODE_ENV=production

cd /var/www/wwwroot/
npm install grunt
npm update
npm install
bower install

grunt build

cd /var/www/wwwroot/dist/

aws s3 sync . s3://rosscodedemoprod

cd /var/www/wwwroot/
echo "Starting NodeJS"
forever start app.js >> /home/ec2-user/nodelog.log 2> /dev/null < /dev/null &
echo "NodeJS started"

#cd /var/www/donorschoose/
#grunt build --force

exit 0

exit