# Docker for Hadoop

Then inspiration for this project came from my need to quickly spin up functional Hadoop clusters for testing things my [Hive JDBC Driver](https://github.com/timveil/hive-jdbc-driver) project.  These images are not intended to be production ready Hadoop clusters although I'm quite certain they could be extended to get there.

Many thanks to projects like https://github.com/big-data-europe/docker-hadoop and various forks for a starting place and ideas. 

I'm currently maintaining 3 Hadoop/Hive configurations:

* [Hadoop 3.1.x + Hive 3.1.x](hadoop-hive-3.1.x)
* [Hadoop 2.8.x + Hive 2.3.x](hadoop-hive-2.3.x)
* [Hadoop 2.7.x + HIve 1.2.x](hadoop-hive-1.2.x)

### Cleaning up Docker

You can easily delete previously download images for these examples with the following command:
```bash
docker images -a | grep "timveil" | awk '{print $3}' | xargs docker rmi -f
```

or, for a complete system prune (this is what I usually do):
```bash
docker system prune -a -f --volumes --filter "label=maintainer=tjveil@gmail.com"
```

Remove all stopped containers:
```bash
docker ps -aq --no-trunc -f status=exited | xargs docker rm
```

Remove all dangling images:
```bash
docker images -q --filter dangling=true | xargs docker rmi

