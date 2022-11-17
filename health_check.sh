#!/bin/bash

HEALTH=$(curl https://white-sky-5236.fly.dev/health -s)

OK="ok"
echo $HEALTH

if [ "$HEALTH" = "$OK" ];
then
  echo=$OK
  exit
fi

echo "Health Check: NOT OK"
exit 1
