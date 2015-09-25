## Elasticsearch with Couchbase Dockerfile

This repository contains **Dockerfile** of [Elasticsearch](http://www.elasticsearch.org/) with Couchbase and head plugin for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/clakech/elastic-couchbase/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [clakech/elasticsearch](https://hub.docker.com/r/clakech/elasticsearch/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/clakech/elastic-couchbase/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull clakech/elastic-couchbase`

   (alternatively, you can build an image from Dockerfile: `docker build -t="clakech/elastic-couchbase" github.com/clakech/elastic-couchbase`)


### Usage

    docker run -d --name elastic-couchbase -p 9200:9200 -p 9300:9300 -p 9091:9091 clakech/elastic-couchbase

see [clakech/elasticsearch](https://hub.docker.com/r/clakech/elasticsearch/) for more options

After few seconds, open `http://<host>:9200/_plugin/head/` to see the result.
