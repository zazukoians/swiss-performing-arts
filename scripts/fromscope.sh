source ./scripts/env.sh
node $SCOPE2RDF/bin/cli -c  $SCOPE2RDF/examples/context.json -p $SCOPE2RDF/examples/properties.json ~/workspace/zazuko/swiss-performing-arts/input/XML-Scope/20161117_xmlexport_dokumentation.xml > target/20161117_xmlexport_dokumentation.jsonld 
node $SCOPE2RDF/bin/cli -c  $SCOPE2RDF/examples/context.json -p $SCOPE2RDF/examples/properties.json ~/workspace/zazuko/swiss-performing-arts/input/XML-Scope/20161117_xmlexport_sammlung.xml > target/20161117_xmlexport_sammlung.jsonld
node $SCOPE2RDF/bin/cli -c  $SCOPE2RDF/examples/context.json -p $SCOPE2RDF/examples/properties.json ~/workspace/zazuko/swiss-performing-arts/input/XML-Scope/2016_11_16_archiv.xml > target/2016_11_16_archiv.jsonld 
