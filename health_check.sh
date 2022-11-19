#!/bin/bash

apt-get update && apt-get install curl -y
wait

res=$(curl -s https://white-sky-5236.fly.dev/health)

if [ "$res" = "ok" ]; then
  echo "Succeeded to curl to /health"
  exit 0
fi

echo "Health Check: NOT OK!"
<<<<<<< HEAD
=======
>>>>>>> b4ef15ac6ca641d9450365e470de578582e627d3
exit 1
