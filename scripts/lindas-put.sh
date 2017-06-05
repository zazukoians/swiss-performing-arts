#!/bin/sh
curl -n \
     -X PUT \
     -H Content-Type:application/n-triples \
     -T target/tanzarchiv.nt \
     -G https://lindasdev.netrics.ch:8443/lindas \
     --data-urlencode graph=https://linked.opendata.swiss/graph/SPA
