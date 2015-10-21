FROM clakech/elasticsearch

RUN mkdir /elasticsearch/plugins

ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml
ADD couchbase_template.json /elasticsearch/couchbase_template.json

RUN ["/elasticsearch/bin/plugin", "--install", "transport-couchbase", "--url", "https://github.com/couchbaselabs/elasticsearch-transport-couchbase/releases/download/2.1.1/elasticsearch-transport-couchbase-2.1.1.zip"]

RUN ["/elasticsearch/bin/plugin", "--install", "mobz/elasticsearch-head"]

RUN ["/elasticsearch/bin/plugin", "--install", "lmenezes/elasticsearch-kopf/2.0"]

COPY init.sh /

ENTRYPOINT ["/init.sh"]

EXPOSE 9091
