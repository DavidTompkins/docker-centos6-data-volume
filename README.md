# docker-centos6-data-volume-container

Docker container to serve shared data volumes for file system persistence in other containers.

## Dependencies

Based on docker-centos6-base: [![https://github.com/DavidTompkins/docker-centos6-base](https://github.com/DavidTompkins/docker-centos6-base)](https://github.com/DavidTompkins/docker-centos6-base)

## Build

run "build.sh", image is tagged as "centos6-data-volume-container".

## Deploy

Run the container *once* by running "start.sh". Other containers can reference the shared data volumes using the "--volumes-from centos6-data-volume-container" option to the docker run command.

The data volumes will be persisted until there are no more references to them. To remove the final reference from the original instance of this data volume container, use the "docker rm -v" command for the container ID of the original instance.

Please read the Docker docs for data volumes to understand how this persistence works and how you would configure backups:

[![https://docs.docker.com/userguide/dockervolumes/](https://docs.docker.com/userguide/dockervolumes/)](https://docs.docker.com/userguide/dockervolumes/)

## License

Licensed under the Apache Software License 2.0. See [![LICENSE](LICENSE)](LICENSE) file.
