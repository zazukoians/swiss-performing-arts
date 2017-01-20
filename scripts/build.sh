#!/bin/sh
if [ -z $FUSEKI_HOST ]
then
  export FUSEKI_HOST="localhost"
fi
source ./scripts/init.sh
source ./scripts/fuseki-init.sh
source ./scripts/fuseki-construct.sh
#cat target/*.nt | sed '/www.ech.ch\/xmlns\/eCH-0071\/1\//d' > target/eCH0071-final.nt
rapper -i guess -c target/complete.nt
