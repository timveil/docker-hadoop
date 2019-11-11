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


fron HS2
``` 
11/11/19 15:13:55 WARN org.apache.hive.service.server.HiveServer2: Error starting HiveServer2 on attempt 1, will retry in 60000ms
java.lang.RuntimeException: Error initializing notification event poll
        at org.apache.hive.service.server.HiveServer2.init(HiveServer2.java:275) ~[hive-service-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2.startHiveServer2(HiveServer2.java:1036) [hive-service-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2.access$1600(HiveServer2.java:140) [hive-service-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2$StartOptionExecutor.execute(HiveServer2.java:1305) [hive-service-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2.main(HiveServer2.java:1149) [hive-service-3.1.2.jar:3.1.2]
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_232]
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62) ~[?:1.8.0_232]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.util.RunJar.run(RunJar.java:318) [hadoop-common-3.1.3.jar:?]
        at org.apache.hadoop.util.RunJar.main(RunJar.java:232) [hadoop-common-3.1.3.jar:?]
Caused by: java.io.IOException: org.apache.thrift.TApplicationException: Internal error processing get_current_notificationEventId
        at org.apache.hadoop.hive.metastore.messaging.EventUtils$MSClientNotificationFetcher.getCurrentNotificationEventId(EventUtils.java:75) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.ql.metadata.events.NotificationEventPoll.<init>(NotificationEventPoll.java:103) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.ql.metadata.events.NotificationEventPoll.initialize(NotificationEventPoll.java:59) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2.init(HiveServer2.java:273) ~[hive-service-3.1.2.jar:3.1.2]
        ... 10 more
Caused by: org.apache.thrift.TApplicationException: Internal error processing get_current_notificationEventId
        at org.apache.thrift.TApplicationException.read(TApplicationException.java:111) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.thrift.TServiceClient.receiveBase(TServiceClient.java:79) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.recv_get_current_notificationEventId(ThriftHiveMetastore.java:5575) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Client.get_current_notificationEventId(ThriftHiveMetastore.java:5563) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient.getCurrentNotificationEventId(HiveMetaStoreClient.java:2723) ~[hive-exec-3.1.2.jar:3.1.2]
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_232]
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62) ~[?:1.8.0_232]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.RetryingMetaStoreClient.invoke(RetryingMetaStoreClient.java:212) ~[hive-exec-3.1.2.jar:3.1.2]
        at com.sun.proxy.$Proxy33.getCurrentNotificationEventId(Unknown Source) ~[?:?]
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_232]
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62) ~[?:1.8.0_232]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.HiveMetaStoreClient$SynchronizedHandler.invoke(HiveMetaStoreClient.java:2773) ~[hive-exec-3.1.2.jar:3.1.2]
        at com.sun.proxy.$Proxy33.getCurrentNotificationEventId(Unknown Source) ~[?:?]
        at org.apache.hadoop.hive.metastore.messaging.EventUtils$MSClientNotificationFetcher.getCurrentNotificationEventId(EventUtils.java:73) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.ql.metadata.events.NotificationEventPoll.<init>(NotificationEventPoll.java:103) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.ql.metadata.events.NotificationEventPoll.initialize(NotificationEventPoll.java:59) ~[hive-exec-3.1.2.jar:3.1.2]
        at org.apache.hive.service.server.HiveServer2.init(HiveServer2.java:273) ~[hive-service-3.1.2.jar:3.1.2]
        ... 10 more

```     

correxponding issue in metastore... 

```
11/11/19 15:13:54 ERROR org.apache.hadoop.hive.metastore.HiveMetaStore: Not authorized to make the get_current_notificationEventId call. You can try to disable metastore.metastore.event.db.notification.api.auth
org.apache.hadoop.hive.metastore.api.MetaException: User root is not allowed to perform this API call
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.authorizeProxyPrivilege(HiveMetaStore.java:7519) ~[hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.get_current_notificationEventId(HiveMetaStore.java:7479) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method) ~[?:1.8.0_232]
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62) ~[?:1.8.0_232]
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43) ~[?:1.8.0_232]
        at java.lang.reflect.Method.invoke(Method.java:498) ~[?:1.8.0_232]
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invokeInternal(RetryingHMSHandler.java:147) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:108) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at com.sun.proxy.$Proxy32.get_current_notificationEventId(Unknown Source) [?:?]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Processor$get_current_notificationEventId.getResult(ThriftHiveMetastore.java:18364) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Processor$get_current_notificationEventId.getResult(ThriftHiveMetastore.java:18349) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39) [libthrift-0.9.3.jar:0.9.3]
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor$1.run(TUGIBasedProcessor.java:111) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor$1.run(TUGIBasedProcessor.java:107) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at java.security.AccessController.doPrivileged(Native Method) ~[?:1.8.0_232]
        at javax.security.auth.Subject.doAs(Subject.java:422) [?:1.8.0_232]
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1729) [hadoop-common-3.1.3.jar:?]
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor.process(TUGIBasedProcessor.java:119) [hive-standalone-metastore-3.1.2.jar:3.1.2]
        at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286) [libthrift-0.9.3.jar:0.9.3]
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149) [?:1.8.0_232]
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624) [?:1.8.0_232]
        at java.lang.Thread.run(Thread.java:748) [?:1.8.0_232]
11/11/19 15:13:54 ERROR org.apache.hadoop.hive.metastore.RetryingHMSHandler: org.apache.thrift.TException: MetaException(message:User root is not allowed to perform this API call)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.get_current_notificationEventId(HiveMetaStore.java:7483)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invokeInternal(RetryingHMSHandler.java:147)
        at org.apache.hadoop.hive.metastore.RetryingHMSHandler.invoke(RetryingHMSHandler.java:108)
        at com.sun.proxy.$Proxy32.get_current_notificationEventId(Unknown Source)
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Processor$get_current_notificationEventId.getResult(ThriftHiveMetastore.java:18364)
        at org.apache.hadoop.hive.metastore.api.ThriftHiveMetastore$Processor$get_current_notificationEventId.getResult(ThriftHiveMetastore.java:18349)
        at org.apache.thrift.ProcessFunction.process(ProcessFunction.java:39)
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor$1.run(TUGIBasedProcessor.java:111)
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor$1.run(TUGIBasedProcessor.java:107)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1729)
        at org.apache.hadoop.hive.metastore.TUGIBasedProcessor.process(TUGIBasedProcessor.java:119)
        at org.apache.thrift.server.TThreadPoolServer$WorkerProcess.run(TThreadPoolServer.java:286)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
Caused by: MetaException(message:User root is not allowed to perform this API call)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.authorizeProxyPrivilege(HiveMetaStore.java:7519)
        at org.apache.hadoop.hive.metastore.HiveMetaStore$HMSHandler.get_current_notificationEventId(HiveMetaStore.java:7479)
        ... 20 more

```
                              