# docker-elastic

[![](https://badge.imagelayers.io/genexies/elastic:latest.svg)](https://imagelayers.io/?images=genexies/elastic:latest 'Get your own badge on imagelayers.io')

FROM elasticsearch:2.3

Just:
 - Installs some plugins: royrusso/elasticsearch-HQ, mobz/elasticsearch-head, xyu/elasticsearch-whatson

Run:
```
docker run -d -p 9200:9200 -p 9300:9300 -E ES_HEAP_SIZE=16g genexies/elastic
```
