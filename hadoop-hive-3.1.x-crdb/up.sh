#!/bin/bash

export COMPOSE_PROJECT_NAME="hive31crdb"

docker-compose build --no-cache
docker-compose up --no-start

docker-compose start roach-cert
docker-compose start roach-0 roach-1 roach-2
docker-compose start metastore-db

echo "resting for 20 seconds before creating schema..."

sleep 20

docker-compose start roach-init

docker-compose exec -T roach-0 /cockroach/cockroach sql --certs-dir=/certs --host=roach-0 --database=metastore < sql/hive-schema-3.1.0.crdb.sql

echo "resting for 20 seconds before bringing up remaining services..."

sleep 20

docker-compose start namenode
docker-compose start datanode
docker-compose start resourcemanager
docker-compose start nodemanager historyserver hs2 metastore