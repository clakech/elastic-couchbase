#!/bin/bash

echo "launch elastic"
/elasticsearch/bin/elasticsearch &

sleep 15s

echo "create couchbase template"
cd /elasticsearch
curl -X PUT http://localhost:9200/_template/couchbase -d @plugins/transport-couchbase/couchbase_template.json 

echo "create data and cache indexes"
curl -X PUT http://localhost:9200/data
	
wait





