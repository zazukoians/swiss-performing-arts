#!/bin/sh
#docker run -p 3030:3030 --name fuseki-spa -e ADMIN_PASSWORD=cinderella -d stain/jena-fuseki
#sleep 20
source scripts/env.sh
curl -u admin:cinderella --data "dbType=tdb&dbName=spa"  http://$FUSEKI_HOST:3030/$/datasets
curl -X PUT  -u admin:cinderella -d @target/20161117_xmlexport_dokumentation.jsonld -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data
curl -X POST  -u admin:cinderella -d @target/20161117_xmlexport_sammlung.jsonld -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data
curl -X POST  -u admin:cinderella -d @target/2016_11_16_archiv.jsonld -H "Content-Type: application/ld+json" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data

