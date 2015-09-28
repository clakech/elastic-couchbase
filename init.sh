#!/bin/bash

wait_for_start() {
    "$@"
    while [ $? -ne 0 ]
    do
        echo 'waiting for elastic to start'
        sleep 1
        "$@"
    done
}


echo "launch elastic"
/elasticsearch/bin/elasticsearch &

wait_for_start echo "create couchbase template"
wait_for_start cd /elasticsearch
wait_for_start curl -X PUT http://localhost:9200/_template/couchbase -d @plugins/transport-couchbase/couchbase_template.json 

wait_for_start echo "create data index"
wait_for_start curl -X PUT http://localhost:9200/data
	
wait





