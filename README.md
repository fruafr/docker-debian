# Debian - Base distributions

These containers are built from Debian base with active apt sources (normal or archive). No additional package is installed.

The Dockerfiles are available in the [fruafr/docker-debian Github repository](https://github.com/fruafr/docker-debian)

The resulting docker containers are available in the [fruafr/debian Docker Hub](https://hub.docker.com/repository/docker/fruafr/debian)

## Current

|Debian Version      |Docker image tag                         |Current Version |Repo Branch   |
|--------------------|-----------------------------------------|----------------|--------------|
|latest              |`docker pull fruafr/debian:latest`       |bullseye        |latest        |
|unstable            |`docker pull fruafr/debian:unstable`     |sid             |unstable      |
|testing             |`docker pull fruafr/debian:testing`      |trixie          |testing       |
|stable              |`docker pull fruafr/debian:stable`       |bookworm        |stable        | 

## Versions History

### Supported versions

|Year Released |Debian Version |Debian Number |Docker image tag                     |Note                      |Repo Branch    | End of Life |
|--------------|---------------|--------------|-------------------------------------|--------------------------|---------------|------------|
|2023          |bookworm       |Debian 12     |`docker pull fruafr/debian:bookworm` |stable                    |bookworm       |
|2021          |bullseye       |Debian 11     |`docker pull fruafr/debian:bullseye` |oldstable                 |bullseye       |
|2019          |buster         |Debian 10      |`docker pull fruafr/debian:buster`   |oldoldstable             |buster         | 2024-06

### Obsolete versions 

|Year Released |Debian Version      |Debian Number |Docker image tag                     |Note                             |Repo Branch  |End of Life |
|--------------|--------------------|--------------|-------------------------------------|---------------------------------|-------------|------------|
|2017          |stretch             |Debian 9      |`docker pull fruafr/debian:stretch`  |archived with LTS     |stretch        | 2022-06 |
|2015          |jessie              |Debian 8      |`docker pull fruafr/debian:jessie`   |archived version with LTS |jessie         | 2020-06 |
|2013          |wheezy              |Debian 7      |`docker pull fruafr/debian:wheezy`   |Obsolete stable version          |wheezy       | 2018-05 |
|2011          |squeeze             |Debian 6      |`docker pull fruafr/debian:squeeze`  |Obsolete stable version (6.0.10) |squeeze      | 2016-02 |

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

## Official Distro Release Information
- To pull the latest official docker version : `docker pull debian:latest`
- [Debian - DockerHub](https://hub.docker.com/_/debian)
- [Debian - Release page](https://www.debian.org/releases/)
- [Debian - LTS](https://wiki.debian.org/fr/LTS)

### Current

|Debian Version      |Docker image tag                  |Current version |
|--------------------|----------------------------------|----------------|
|latest              |`docker pull debian:latest`       |bookworm        |
|unstable            |`docker pull debian:unstable`     |sid             |
|testing             |`docker pull debian:testing`      |trixie        |
|stable              |`docker pull debian:stable`       |bookworm        |

### Versions History

#### Supported versions

|Year Released |Debian Version |Debian Number |Docker image tag              |Note                      |
|--------------|---------------|--------------|------------------------------|--------------------------|
|2023          |bookworm       |Debian 12     |`docker pull debian:bookworm` |stable                   |
|2021          |bullseye       |Debian 11     |`docker pull debian:bullseye` |oldstable                    |
|2019          |buster         |Debian 10      |`docker pull debian:buster`  |oldoldstable                 |

#### Obsolete versions 

|Year Released |Debian Version      |Debian Number |Docker image tag              |Note                             |End of Life |
|--------------|--------------------|--------------|------------------------------|---------------------------------|------------|
|2017          |stretch        |Debian 9     |`docker pull debian:stretch`  |oldoldstable with LTS     | 2022-06 |
|2015          |jessie         |Debian 7      |`docker pull debian:jessie`   |archived version with LTS | 2020-06 |
|2013          |wheezy              |Debian 7      |`docker pull debian:wheezy`   |Obsolete stable version          | 2018-05 |
|2011          |squeeze             |Debian 6      |`docker pull debian:squeeze`  |Obsolete stable version (6.0.10) | 2016-02 |

----
Updated : 2023-10-14
