# Docker Debian

This Dockerfile can build debian containers with the various branches.

[![debian build status](https://img.shields.io/docker/cloud/build/fruafr/debian.svg)](https://hub.docker.com/repository/docker/fruafr/debian)

Branches
--------

This repository has multiple branches that relate to Debian versions.

|Branch  |Debian Version      |Docker image tag|
|--------|--------------------|----------------|
|main    |latest              |latest          |
|unstable|unstable            |unstable        |
|testing |testing             |testing         |
|stable  |stable              |stable          |
|bookworm|bookworm            |bookworm        |
|bullseye|bullseye            |bullseye        |
|buster  |buster              |buster          |
|stretch |stretch             |stretch         |
|jessie  |jessie              |jessie          |
|wheezy  |wheezy              |wheezy          |
|squeeze |squeeze             |squeeze         |

Pull strategy
-------------
The different branches are **not** merged, they live as individual branches.

Manually starting
-----------------

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  fruafr/debian
```