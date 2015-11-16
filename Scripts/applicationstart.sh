#!/bin/bash
. ~/.bashrc

export NODE_ENV=production

cd /var/www/donorschoose/
npm update
npm install
bower install

grunt build

cd /var/www/donorschoose/dist/

aws s3 sync . s3://rosscodedemoprod

#echo "Starting NodeJS"
#forever start app.js >> /home/ec2-user/nodelog.log 2> /dev/null < /dev/null &
#echo "NodeJS started"

#cd /var/www/donorschoose/
#grunt build --force

exit 0

exit