# Hadoop 3.2.x and Hive 3.1.x Example - CockroachDB
This example relies on a forked version of Hive 3.1.2 that supports CockroachDB.  The changes were minimal and could be incorporated into future versions of Apache Hive.  See [here](https://github.com/timveil/hive/tree/release-3.1.2) for details on the CockroachDB compatible fork. 

The `docker-compose.yml` contains the following services:
* `namenode` - Apache Hadoop NameNode
* `datanode` - Apache Hadoop DataNode
* `resourcemanager` - Apache Hadoop YARN Resource Manager
* `nodemanager` - Apache Hadoop YARN Node Manager
* `historyserver` - Apache Hadoop YARN Timeline Manager
* `hs2` - Apache Hive HiveServer2
* `metastore` - Apache Hive Standalone Metastore
* `metastore-db` - CockroachDB that supports the Apache Hive Metastore

## Configuration
Hadoop configuration parameters are provided by the following `.env` files.  Ultimately these values are written to the appropriate Hadoop XML configuration file.  For Example, properties beginning with the following keys map the following files:
* `CORE_CONF_*` > `core-site.xml`
* `HDFS_CONF_*` > `hdfs-site.xml`
* `HIVE_SITE_CONF_*` > `hive-site.xml`
* `YARN_CONF_*` > `yarn-site.xml`
* `METASTORE_SITE_CONF_*` > `metastore-site.xml`

Key names use the following character conversions:
* a single underscore `_` equals dot `.`
* a double underscore `__` equals a single underscore `_`
* a triple underscore `___` equals a dash `-`

For example, the key `HDFS_CONF_dfs_namenode_datanode_registration_ip___hostname___check` would result in the property `dfs.namenode.datanode.registration.ip-hostname-check` being written to `hdfs-site.xml`.

Another example, the key `YARN_CONF_yarn_resourcemanager_resource__tracker_address` would result in the property `yarn.resourcemanager.resource_tracker.address` being written to `yarn-site.xml`.

Exiting configuration files and their default values are listed below.  Please note the value for `YARN_CONF_yarn_nodemanager_resource_memory___mb` assumes that your docker host has at least 8gb of memory.  Feel free to modify as necessary. 

### core.env
```properties
HADOOP_LOG_DIR=/var/log/hadoop
YARN_LOG_DIR=/var/log/hadoop

CORE_CONF_fs_defaultFS=hdfs://namenode:9820
CORE_CONF_hadoop_http_staticuser_user=root

HDFS_CONF_dfs_namenode_datanode_registration_ip___hostname___check=false
HDFS_CONF_dfs_permissions_enabled=false
HDFS_CONF_dfs_webhdfs_enabled=true
HDFS_CONF_dfs_replication=1

MAPRED_CONF_mapreduce_framework_name=yarn

YARN_CONF_yarn_nodemanager_resource_memory___mb=6144
YARN_CONF_yarn_nodemanager_aux___services=mapreduce_shuffle
YARN_CONF_yarn_nodemanager_aux___services_mapreduce__shuffle_cs=org.apache.hadoop.mapred.ShuffleHandler
YARN_CONF_yarn_resourcemanager_recovery_enabled=true
YARN_CONF_yarn_resourcemanager_store_class=org.apache.hadoop.yarn.server.resourcemanager.recovery.FileSystemRMStateStore
YARN_CONF_yarn_resourcemanager_system___metrics___publisher_enabled=true
YARN_CONF_yarn_timeline___service_enabled=true
```
### hive.env
```properties
HIVE_SITE_CONF_hive_server2_transport_mode=binary
HIVE_SITE_CONF_hive_execution_engine=tez
HIVE_SITE_CONF_hive_metastore_uri_resolver=org.apache.hadoop.hive.metastore.hooks.SimpleURIResolver
HIVE_SITE_CONF_hive_metastore_uris=thrift://metastore:9083
```
### metastore-standalone.env
```properties
METASTORE_STANDALONE_CONF_javax_jdo_option_ConnectionURL=jdbc:postgresql://metastore-db:5432/metastore?ApplicationName=metastore
METASTORE_STANDALONE_CONF_javax_jdo_option_ConnectionDriverName=org.postgresql.Driver
METASTORE_STANDALONE_CONF_javax_jdo_option_ConnectionUserName=hive
METASTORE_STANDALONE_CONF_javax_jdo_option_ConnectionPassword=hive
METASTORE_STANDALONE_CONF_datanucleusq_schema_autoCreateAll=false
METASTORE_STANDALONE_CONF_metastore_metastore_event_db_notification_api_auth=false
```
### yarn-node-manager.env
```properties
YARN_CONF_yarn_resourcemanager_resource___tracker_address=resourcemanager:8031
```

### yarn-remote.env
```properties
```

### yarn-resource-manager.env
```properties
```

### yarn-timeline.env
```properties
```

## Docker Compose

### Start the Containers
```bash
./up.sh
```

### Stop and Destroy the Containers
```bash
./down.sh
```

### Prune Docker
```bash
./prune.sh
```

## Testing
Once all services are up you can create a simple hive table to test functionality.  For example:

```bash
$ docker exec -ti hs2 /bin/bash
# /opt/hive/bin/beeline -u jdbc:hive2://localhost:10000
> CREATE TABLE pokes (foo INT, bar STRING);
> LOAD DATA LOCAL INPATH '/opt/hive/examples/files/kv1.txt' OVERWRITE INTO TABLE pokes;
> SELECT * FROM pokes;
> !quit
```

## Exposed UI Interfaces

* Name Node Overview - http://localhost:9870
* Data Node Overview - http://localhost:9864
* YARN Resource Manager - http://localhost:8088
* YARN Node Manager - http://localhost:8042
* YARN Application History - http://localhost:8188
* HiveServer 2 - http://localhost:10002
* CockroachDB Dashboard - [http://localhost:8080](http://localhost:8080).  Admin UI Username is `hive` and Password is `hive`.
* HAProxy Dashboard - http://localhost:8081

## Docker Images
* Hadoop NameNode - [timveil/docker-hadoop-namenode:3.1.x](https://hub.docker.com/r/timveil/docker-hadoop-namenode/)
* Hadoop DataNode - [timveil/docker-hadoop-datanode:3.1.x](https://hub.docker.com/r/timveil/docker-hadoop-datanode/)
* YARN Resource Manager - [timveil/docker-hadoop-resourcemanager:3.1.x](https://hub.docker.com/r/timveil/docker-hadoop-resourcemanager/)
* YARN Node Manager - [timveil/docker-hadoop-nodemanager:3.1.x](https://hub.docker.com/r/timveil/docker-hadoop-nodemanager/)
* YARN Timeline Server - [timveil/docker-hadoop-historyserver:3.1.x](https://hub.docker.com/r/timveil/docker-hadoop-historyserver/)
* Hive Hiverserver2 - [timveil/docker-hadoop-hive-hs2:3.1.x-fork](https://hub.docker.com/r/timveil/docker-hadoop-hive-hs2/)
* Hive Metastore Standalone - [timveil/docker-hadoop-hive-metastore-standalone:3.1.x](https://hub.docker.com/repository/docker/timveil/docker-hadoop-hive-metastore-standalone)
* CockroachDB - [cockroachdb/cockroach:latest](https://hub.docker.com/r/cockroachdb/cockroach)

## Open Interactive Shells
```bash
docker exec -ti namenode /bin/bash
docker exec -ti datanode /bin/bash
docker exec -ti resourcemanager /bin/bash
docker exec -ti nodemanager /bin/bash
docker exec -ti historyserver /bin/bash
docker exec -ti hs2 /bin/bash
docker exec -ti metastore /bin/bash
docker exec -ti metastore-db /bin/bash
```
