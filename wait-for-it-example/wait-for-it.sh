#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error
set -e

host="$1"
port="$2"
echo "host:${host} port:${port}"

shift 2
cmd="$@"

echo "Command to be executed: $@"

echo "Waiting for five seconds. Here we could check if ${host}:${port} is responding."
sleep 5

exec ${cmd}
