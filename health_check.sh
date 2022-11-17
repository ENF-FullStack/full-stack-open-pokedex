#!/bin/bash

RES=$(curl https://white-sky-5236.fly.dev/health -s)

if [ "$RES" == "ok" ];
then
  echo="Succeeded to curl to /health"
  exit 0
fi

echo "Health Check: NOT OK"
exit 1
