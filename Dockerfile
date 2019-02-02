FROM anapsix/alpine-java

RUN wget http://ftp.download-by.net/apache/kafka/2.1.0/kafka_2.11-2.1.0.tgz
RUN mkdir /kafka
RUN cp kafka_2.11-2.1.0.tgz /kafka
RUN cd /kafka; tar -xvf kafka_2.11-2.1.0.tgz

RUN chmod a+x /kafka/kafka_2.11-2.1.0

COPY server.properties /kafka/kafka_2.11-2.1.0/config

CMD /bin/sh /kafka/kafka_2.11-2.1.0/bin/kafka-server-start.sh /kafka/kafka_2.11-2.1.0/config/server.properties

