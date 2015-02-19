# Version 1.1

FROM abh1nav/java7

MAINTAINER Abhinav Ajgaonkar <abhinav316@gmail.com>

RUN \
	mkdir /etc/service/elasticsearch /opt/elasticsearch; \
	wget -O - https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.tar.gz \
	| tar xzf - --strip-components=1 -C "/opt/elasticsearch";
	

COPY run /etc/service/elasticsearch/

WORKDIR /opt/elasticsearch

CMD ["/sbin/my_init"]

EXPOSE 9200 9300

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
