FROM elasticsearch:2.2

MAINTAINER Javier Jerónimo <jcjeronimo@genexies.net>

ENV ES_HEAP_SIZE=

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install royrusso/elasticsearch-HQ
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install xyu/elasticsearch-whatson

ENTRYPOINT ["/docker-entrypoint.sh"]

# Same default parameter to parent's entry-point
CMD ["elasticsearch"]
