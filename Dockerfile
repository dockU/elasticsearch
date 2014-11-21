FROM docku/jre8
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV ES_VER 1.4.0
EXPOSE [9200, 9300]
ADD https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VER.tar.gz /opt/

RUN /usr/bin/pacman -Syu --noconfirm --needed tar
RUN /bin/tar -C /opt/ xf /opt/elasticsearch-$ES_VER.tar.gz

ADD run /service/elasticsearch/
