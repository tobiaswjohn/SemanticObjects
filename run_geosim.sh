#!/bin/bash

# usage: ./run_geosim.sh ONTOLOGY-FILE 

# e.g. examples/Geological/total_mini.ttl

Ontology=$1
Program=${2:-"examples/Geological/simulate_onto.smol"}

echo $Program

java -jar build/libs/smol.jar -i $Program -v -e -b $Ontology  -p UFRGS1=https://www.inf.ufrgs.br/bdi/ontologies/geocoreontology#UFRGS -p obo=http://purl.obolibrary.org/obo/ -d http://www.semanticweb.org/quy/ontologies/2023/2/untitled-ontology-38#
