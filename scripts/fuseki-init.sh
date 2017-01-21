#!/bin/sh
#docker run -p 3030:3030 -e ADMIN_PASSWORD=cinderella -d stain/jena-fuseki
#sleep 20
curl -u admin:cinderella --data "dbType=tdb&dbName=spa"  http://$FUSEKI_HOST:3030/$/datasets
#s-update --service http://localhost:3030/spa/update 'CLEAR default'
curl -X PUT  -u admin:cinderella -d @target/complete-mapped.nt -H "Content-Type: application/n-triples" http://admin:cinderella@$FUSEKI_HOST:3030/spa/data

