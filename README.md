# Swiss Performing Arts Linked Data

This repository contains data from the Swiss Performing Arts archive in Bern, Switzerland.

Structure:

* `input`: source files as CSV
* `config`: RML mapping files (Turtle)
* `queries`: SPARQL queries that are executed in the processing pipeline
* `target`: Non-versioned output directory, generated at the first run of the scripts
* `scripts`: Contains all the scripts needed to generate Linked Data

Note that the pipeline assumes to be run on a Unix like system. It expects to have a local Fuseki SPARQL endpoint available. This can be done by starting Fuseki manually upfront or by providing it via Docker.

The data is first mapped to a simple key-value like RDF structure. In a second step all the data is loaded into a SPARQL endpint (Fuseki in this case) and transformed to a better graph structure using a series of SPARQL queries. The final result then gets pulled from the store and serialized into the local file `target/complete.nt`.
