cp ~/.m2/repository/com/google/protobuf/protobuf-java/3.8.0/protobuf-java-3.8.0.jar . && \
cp ~/.m2/repository/org/postgresql/postgresql/42.2.9/postgresql-42.2.9.jar . && \
cp ~/.m2/repository/org/antlr/antlr4-runtime/4.7.2/antlr4-runtime-4.7.2.jar . && \
cp ~/.m2/repository/com/github/shyiko/mysql-binlog-connector-java/0.19.1/mysql-binlog-connector-java-0.19.1.jar . && \
cp ~/.m2/repository/mysql/mysql-connector-java/8.0.16/mysql-connector-java-8.0.16.jar . && \
docker build -t debezium-local/connect:1.0 . && \
rm protobuf-java-3.8.0.jar && \
rm postgresql-42.2.9.jar && \
rm antlr4-runtime-4.7.2.jar && \
rm mysql-binlog-connector-java-0.19.1.jar && \
rm mysql-connector-java-8.0.16.jar

