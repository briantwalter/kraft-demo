# syntax=docker/dockerfile:1
FROM confluentinc/cp-kafka
RUN /bin/kafka-storage format -t `/bin/kafka-storage random-uuid` -c /etc/kafka/kraft/server.properties
CMD ["/bin/kafka-server-start", "/etc/kafka/kraft/server.properties"]

