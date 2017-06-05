#!/bin/sh
curl -G -H "Accept: application/n-triples" -o target/tanzarchiv.nt http://admin:cinderella@$FUSEKI_HOST:3030/spa/data --data-urlencode graph=http://example.com/tanzarchiv
