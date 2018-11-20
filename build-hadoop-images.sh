#!/bin/bash

# hadoop base
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-base/trigger/08cbafd3-0ffe-42bf-a8e9-58d5882faa7a/

# hadoop core
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-core/trigger/71688dba-7bfd-4a2b-8d62-4c3344e63fc5/

# data node
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-datanode/trigger/985cb6cc-7d7e-43d4-a4ec-1f1b4717036d/

# name node
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-namenode/trigger/9a6b10fe-b254-4df4-a2ff-e80227abcb29/

# node manager
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-nodemanager/trigger/99d38d82-5015-47c7-ab35-0eb01841f0b2/

# history server
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-historyserver/trigger/5fa9f2b7-aac7-474a-87a1-9e16129bcf3c/

# resource manager
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-resourcemanager/trigger/7aeb39e1-34a3-425a-8688-abd37d80bebb/

# hive base
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-hive-base/trigger/2f087f5c-5c5e-47cc-a567-292be5fca608/

# hive hs2
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-hive-hs2/trigger/d0a6f230-f9fd-4140-a6a0-267e10a2d970/

# hive metastore
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-hive-metastore/trigger/9cab31ef-dec5-4bcd-a869-897bbf27fd95/

# hive metastore db
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/timveil/docker-hadoop-hive-metastore-db/trigger/46fa5969-ee1c-42bc-84e9-baa17c4289da/