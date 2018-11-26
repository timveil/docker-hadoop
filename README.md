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

