#!/bin/sh

# if [ ! -d "/tmp/check" ]; then
#  mkdir /tmp/check
#  echo `date` > /tmp/check/first_`date +%Y%m%d_%H%M%S`
# else
#  echo `date` > /tmp/check/second_`date +%Y%m%d_%H%M%S`
# fi

echo 'hello'
lego --path /lego --dns digitalocean --email example@mail.com --domains *.masa-nakajima.com --domains masa-nakajima.com  --accept-tos renew --days 3
