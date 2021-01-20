#!/bin/bash

export COMPOSE_PROJECT_NAME="hive31crdb"

# prune everything...
#docker system prune -a -f --volumes

# prune only images i maintain...
docker system prune -a -f --volumes --filter "label=maintainer=tjveil@gmail.com"