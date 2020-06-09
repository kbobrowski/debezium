FROM debezium/connect-base:1.0

LABEL maintainer="Debezium Community"

ARG DEBEZIUM_VERSION=1.0.3.Final
ENV DEBEZIUM_VERSION=${DEBEZIUM_VERSION}

WORKDIR $KAFKA_CONNECT_PLUGINS_DIR/debezium-connector-postgres

COPY protobuf-java-3.8.0.jar .
COPY postgresql-42.2.9.jar .
COPY debezium-connector-postgres/target/debezium-connector-postgres-$DEBEZIUM_VERSION.jar .
COPY debezium-core/target/debezium-core-$DEBEZIUM_VERSION.jar .

WORKDIR $KAFKA_CONNECT_PLUGINS_DIR/debezium-connector-mysql

COPY antlr4-runtime-4.7.2.jar .
COPY mysql-binlog-connector-java-0.19.1.jar .
COPY mysql-connector-java-8.0.16.jar .
COPY debezium-ddl-parser/target/debezium-ddl-parser-$DEBEZIUM_VERSION.jar .
COPY debezium-connector-mysql/target/debezium-connector-mysql-$DEBEZIUM_VERSION.jar .
COPY debezium-core/target/debezium-core-$DEBEZIUM_VERSION.jar .
