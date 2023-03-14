# Base Debian distributions

These containers are built from Debian base with the proper apt sources (normal or archive). No additional package is installed.

The Dockerfiles are available in the [fruafr/docker-debian Github repository](https://github.com/fruafr/docker-debian)

The resulting docker containers are available in the [frua/debian Docker Hub](https://hub.docker.com/repository/docker/fruafr/debian)

[![debian build status](https://img.shields.io/docker/cloud/build/fruafr/debian.svg)](https://hub.docker.com/repository/docker/fruafr/debian)

## Branches

This repository has multiple branches that relate to Debian versions.

### Supported versions

|Repo Branch  |Debian Version      |Docker image tag|
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

### Obsolete versions 

|Repo Branch  |Debian Version      |Docker image tag|
|-------------|--------------------|----------------|
|wheezy       |wheezy              |wheezy          |
|squeeze      |squeeze             |squeeze         |

The containers are generated on Ubuntu. In these containers, apt-get is configured for [Debian archive](http://archive.debian.org/) package repositories. You can view [Debian distribution archives](https://www.debian.org/distrib/archive.html).

Debian Wheezy and Debian Squeeze containers do not function under Microsoft WSL or Docker for Windows. It causes apt-get segmentation fault. It is a [known bug](https://forums.docker.com/t/running-apt-get-on-debian-wheezy-gives-me-a-seg-fault/121346).

## Pull strategy

The different branches are **not** merged, they live as individual branches.

## Manually starting

```
docker run \
  --tty \
  --privileged \
  --volume /sys/fs/cgroup:/sys/fs/cgroup:ro \
  fruafr/debian
```
