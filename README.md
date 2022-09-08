# Ontology

## Ruby version
2.7.4

## How to run
```
git clone https://github.com/dev-nomi/ontology.git
cd ontology/ && gem build ontology.gemspec
gem install ontology-0.0.0.gem 
irb
require 'ontology_api'
onto = OntologyApi.new
onto.request(ontology_id: "efo")
```