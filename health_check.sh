#!/bin/bash

apt-get update && apt-get install curl -y
wait

res=$(curl -s https://white-sky-5236.fly.dev/health)

if [ "$res" = "ok" ]; then
  echo "Succeeded to curl to /health"
  exit 0
fi

echo "Health Check: NOT OK!"


exit 1
