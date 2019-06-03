#!/bin/bash

set -e

host="db"
port="3306"
cmd="$@"

>&2 echo "!!!!!!!! Check db for available !!!!!!!!"

until curl http://"$host":"$port"; do
  >&2 echo "db is unavailable - sleeping"
  sleep 1
done

>&2 echo "db is up - executing command"

exec $cmd