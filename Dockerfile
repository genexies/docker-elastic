FROM elasticsearch:2.3

MAINTAINER Javier Jerónimo <jcjeronimo@genexies.net>

ENV ES_HEAP_SIZE=

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install royrusso/elasticsearch-HQ
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install xyu/elasticsearch-whatson
RUN bin/plugin install cloud-aws

COPY gnx-entrypoint.sh /gnx-entrypoint.sh
RUN chmod u+x /gnx-entrypoint.sh

# Same default parameter to parent's entry-point
ENTRYPOINT ["/gnx-entrypoint.sh"]
CMD ["elasticsearch"]
