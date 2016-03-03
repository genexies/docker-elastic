FROM elasticsearch:2.2

MAINTAINER Javier Jerónimo <jcjeronimo@genexies.net>

WORKDIR /usr/share/elasticsearch

RUN bin/plugin install royrusso/elasticsearch-HQ
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install karmi/elasticsearch-paramedic
RUN bin/plugin install xyu/elasticsearch-whatson

ENTRYPOINT ["/docker-entrypoint.sh"]

# Same default parameter to parent's entry-point
CMD ["elasticsearch", "-Xmx16g", "-Xms16g"]
