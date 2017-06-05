#!/bin/sh
#docker run -p 3030:3030 --name fuseki-spa -e ADMIN_PASSWORD=cinderella -d stain/jena-fuseki
#sleep 20
source scripts/env.sh
curl -u admin:cinderella --data "dbType=tdb&dbName=spa"  http://$FUSEKI_HOST:3030/$/datasets
curl -X PUT -u admin:cinderella -T target/20161117_xmlexport_dokumentation.jsonld -G -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data --data-urlencode graph=http://example.com/tanzarchiv
curl -X POST -u admin:cinderella -T target/20161117_xmlexport_sammlung.jsonld -G -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data --data-urlencode graph=http://example.com/tanzarchiv
curl -X POST -u admin:cinderella -T target/2016_11_16_archiv.jsonld -G -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data --data-urlencode graph=http://example.com/tanzarchiv


