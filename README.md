
FROM elasticsearch:2.2

Just:
 - Installs some plugins: royrusso/elasticsearch-HQ, mobz/elasticsearch-head, xyu/elasticsearch-whatson

Run:
```
docker run -d -p 9200:9200 -p 9300:9300 -E ES_HEAP_SIZE=16g genexies/elastic
```
