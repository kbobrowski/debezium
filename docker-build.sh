cp ~/.m2/repository/com/google/protobuf/protobuf-java/3.8.0/protobuf-java-3.8.0.jar . && \
cp ~/.m2/repository/org/postgresql/postgresql/42.2.9/postgresql-42.2.9.jar . && \
docker build -t debezium-local/connect:1.0 . && \
rm protobuf-java-3.8.0.jar && \
rm postgresql-42.2.9.jar
