# DevDB Elasticsearch

Elasticsearch 1.5.1 in a docker container - for when you need a quick ES node for development.

## Single Node with Ephemeral Storage

```
docker pull devdb/elasticsearch:latest
docker run -d --name elasticsearch -p 9200:9200 devdb/elasticsearch
```

## Single node with Persistent Storage

```
docker pull devdb/elasticsearch:latest
docker run -d --name elasticsearch -p 9200:9200 -v /tmp/elasticsearch:/opt/elasticsearch/data devdb/elasticsearch
```

where `/tmp/elasticsearch` is where you want it to dump all the data files on your host.

## Cluster

Coming soon!
