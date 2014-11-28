#docker-elasticsearch

Elasticsearch 1.4.1 (Java7) in a box.

## Single Node with Ephemeral Storage

```
docker pull abh1nav/elasticsearch
docker run -d --name es -p 9200:9200 abh1nav/elasticsearch
```

## Single node with Persistent Storage

```
docker pull abh1nav/elasticsearch
docker run -d --name es -p 9200:9200 -v /home/asdf/elasticsearch-data:/opt/elasticsearch/data abh1nav/elasticsearch
```

where `/home/asdf/elasticsearch-data` is where you want it to dump all the data files on your host.

## Cluster

Coming soon!
