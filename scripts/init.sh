#!/bin/sh
mkdir -p target
rm target/*.nt
# redirect stderr to null as we can't get rid of this logging
#java -jar lib/RMLMapper-0.1.jar -M config/eCH0071.ttl -O target/complete.nt 2> /dev/null
#perl -pi.back -e 's/(id\/canton\/)([A-Z]{2})/\1\L\2/' target/complete.nt
