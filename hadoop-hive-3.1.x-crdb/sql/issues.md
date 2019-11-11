```
pq: syntax error: unimplemented at or near "hash"
DETAIL: source SQL:
CREATE INDEX TC_TXNID_INDEX ON TXN_COMPONENTS USING hash (TC_TXNID)
                                                    ^
HINT: This feature is not yet implemented in CockroachDB.
```

```
DEFFERED
```

```
USING btree
```

Must have secure cluster to use password

```
--SET standard_conforming_strings = off;
--SET check_function_bodies = false;
--SET escape_string_warning = off;
--SET default_tablespace = '';
--SET default_with_oids = false;
```

think i can remove metastore client cert and volume

-- resolved
```
metastore          | 2019-10-29 15:26:10: Starting Hive Metastore Server
metastore          | SLF4J: Class path contains multiple SLF4J bindings.
metastore          | SLF4J: Found binding in [jar:file:/opt/hive/lib/log4j-slf4j-impl-2.10.0.jar!/org/slf4j/impl/StaticLoggerBinder.class]
metastore          | SLF4J: Found binding in [jar:file:/opt/hadoop/share/hadoop/common/lib/slf4j-log4j12-1.7.25.jar!/org/slf4j/impl/StaticLoggerBinder.class]
metastore          | SLF4J: See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.
metastore          | SLF4J: Actual binding is of type [org.apache.logging.slf4j.Log4jLoggerFactory]
metastore          | 10/29/19 15:26:12 INFO org.apache.hadoop.hive.metastore.conf.MetastoreConf: Found configuration file file:/opt/hive/conf/hive-site.xml
metastore          | 10/29/19 15:26:13 INFO org.apache.hadoop.hive.metastore.conf.MetastoreConf: Unable to find config file hivemetastore-site.xml
metastore          | 10/29/19 15:26:13 INFO org.apache.hadoop.hive.metastore.conf.MetastoreConf: Found configuration file null
metastore          | 10/29/19 15:26:13 INFO org.apache.hadoop.hive.metastore.conf.MetastoreConf: Found configuration file file:/opt/hive/conf/metastore-site.xml
metastore          | Exception in thread "main" java.lang.NoSuchMethodError: com.google.common.base.Preconditions.checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V
metastore          |    at org.apache.hadoop.conf.Configuration.set(Configuration.java:1357)
metastore          |    at org.apache.hadoop.conf.Configuration.set(Configuration.java:1338)
metastore          |    at org.apache.hadoop.conf.Configuration.setBoolean(Configuration.java:1679)
metastore          |    at org.apache.hadoop.hive.metastore.conf.MetastoreConf.setBoolVar(MetastoreConf.java:1379)
metastore          |    at org.apache.hadoop.hive.metastore.conf.MetastoreConf.newMetastoreConf(MetastoreConf.java:1196)
metastore          |    at org.apache.hadoop.hive.metastore.HiveMetaStore.main(HiveMetaStore.java:8770)
metastore          |    at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
metastore          |    at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
metastore          |    at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
metastore          |    at java.lang.reflect.Method.invoke(Method.java:498)
metastore          |    at org.apache.hadoop.util.RunJar.run(RunJar.java:323)
metastore          |    at org.apache.hadoop.util.RunJar.main(RunJar.java:236)

```

```
11/05/19 15:08:30 INFO DataNucleus.ValueGeneration: Error encountered allocating block of IDs : Couldnt obtain a new sequence (unique id) : ERROR: syntax error: unimplemented: unimplemented at or near "update"
  Detail: source SQL:
SELECT "NEXT_VAL" FROM "SEQUENCE_TABLE" WHERE "SEQUENCE_NAME"=$1 FOR UPDATE
               ```

```
11/06/19 16:12:50 INFO DataNucleus.ValueGeneration: Error encountered allocating block of IDs : Couldnt obtain a new sequence (unique id) : ERROR: syntax error: unimplemented: unimplemented at or near "update"
  Detail: source SQL:
SELECT "NEXT_VAL" FROM "SEQUENCE_TABLE" WHERE "SEQUENCE_NAME"=$1 FOR UPDATE
                                                                     ^
  Hint: See: https://github.com/cockroachdb/cockroach/issues/6583
11/06/19 16:12:50 INFO DataNucleus.ValueGeneration: Creating Repository for IDs in the datastore
11/06/19 16:12:50 INFO DataNucleus.JDO: Exception thrown
org.datanucleus.exceptions.NucleusUserException: Could not create "increment"/"table" value-generation container "SEQUENCE_TABLE" since autoCreate flags do not allow it. 
        at org.datanucleus.store.rdbms.valuegenerator.TableGenerator.createRepository(TableGenerator.java:261) ~[datanucleus-rdbms-4.1.19.jar:?]
        at org.datanucleus.store.rdbms.valuegenerator.AbstractRDBMSGenerator.obtainGenerationBlock(AbstractRDBMSGenerator.java:157) ~[datanucleus-rdbms-4.1.19.jar:?]
        at org.datanucleus.store.valuegenerator.AbstractGenerator.obtainGenerationBlock(AbstractGenerator.java:184) ~[datanucleus-core-4.1.17.jar:?]
        at org.datanucleus.store.valuegenerator.AbstractGenerator.next(AbstractGenerator.java:92) ~[datanucleus-core-4.1.17.jar:?]
        at org.datanucleus.store.rdbms.RDBMSStoreManager.getStrategyValueForGenerator(RDBMSStoreManager.java:2048) ~[datanucleus-rdbms-4.1.19.jar:?]

```                                                 