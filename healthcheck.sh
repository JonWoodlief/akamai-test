#!/bin/bash

echo "-------   GTM endpoints ---------"
while read line; do
    echo "$line "
    curl -s $line | jq '.regional_healthcheck'
done <gtm-hosts

echo "-------   healthcheck statuscodes ---------"
while read line; do
    curl -s -o /dev/null -w "%{http_code}" "$line"
    echo " $line "
done <hc-hosts

