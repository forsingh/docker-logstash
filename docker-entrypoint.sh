#!/bin/bash

set -e

# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
  set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
  set -- gosu logstash "$@"
fi
cat /oneroom-configs/logstash.conf | sed "s/ES_HOST/$ES_HOST/"  > /opt/logstash/conf/logstash.conf

exec "$@"
