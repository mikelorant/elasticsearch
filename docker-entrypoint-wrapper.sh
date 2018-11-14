#!/usr/bin/env bash

source /root/bootstrap/*

gomplate --file /usr/share/elasticsearch/config/elasticsearch.yml.gotpl --out /usr/share/elasticsearch/config/elasticsearch.yml

ulimit -l unlimited

exec /usr/local/bin/docker-entrypoint.sh $@
