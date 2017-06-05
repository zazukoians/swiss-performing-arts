#!/bin/sh
source scripts/env.sh

FUSEKI_UPDATE=http://$FUSEKI_HOST:3030/spa/update
function sparqlu { curl -H "Accept: text/turtle" --data-urlencode update@$1 $2 ; }

#echo $FUSEKI_UPDATE

# some INSERTs

## Classes
sparqlu construct/Record-Collection.rq $FUSEKI_UPDATE
sparqlu construct/Record-Recordset.rq $FUSEKI_UPDATE
sparqlu construct/Record-CulturalHeritageObject.rq $FUSEKI_UPDATE
sparqlu construct/Record-AnalogCopy.rq $FUSEKI_UPDATE
sparqlu construct/Record-DigitalResource.rq $FUSEKI_UPDATE
sparqlu construct/Record-Item.rq $FUSEKI_UPDATE

## Properties


## Concept generation & cleanup

sparqlu construct/hasLocation-Country.rq $FUSEKI_UPDATE
sparqlu construct/associatedWith-CorporateBody.rq $FUSEKI_UPDATE
sparqlu construct/associatedWith-DocumentaryForm.rq $FUSEKI_UPDATE
sparqlu construct/associatedWith-Person.rq $FUSEKI_UPDATE
