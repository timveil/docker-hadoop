#!/bin/bash

docker-compose up --no-start

docker-compose start metastore-db

echo "resting for 20 seconds before creating schema..."

sleep 20

docker-compose exec metastore-db /cockroach/cockroach sql --insecure --execute="SET CLUSTER SETTING server.remote_debugging.mode = \"any\";"
docker-compose exec metastore-db /cockroach/cockroach sql --insecure --execute="CREATE DATABASE metastore;"
docker-compose exec metastore-db /cockroach/cockroach sql --insecure --execute="CREATE USER hive;"
docker-compose exec metastore-db /cockroach/cockroach sql --insecure --execute="GRANT ALL ON DATABASE metastore TO hive;"

docker-compose exec -T metastore-db /cockroach/cockroach sql --insecure --database=metastore < sql/hive-schema-3.1.0.crdb.sql

echo "resting for 20 seconds before bringing up remaining services..."

sleep 20

docker-compose start namenode
docker-compose start datanode
docker-compose start resourcemanager
docker-compose start nodemanager historyserver hs2 metastore
