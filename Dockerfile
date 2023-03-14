FROM debian:wheezy

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-14"

ENV container docker
ENV DEBIAN_FRONTEND noninteractive

#Add apt sources
RUN echo "deb http://archive.debian.org/debian/ wheezy contrib main non-free" > /etc/apt/sources.list
RUN echo "Acquire::Check-Valid-Until false;" > /etc/apt/apt.conf

#Update, upgrade, clean
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

#cgroup volume
VOLUME [ "/sys/fs/cgroup" ]

# Define default command.
CMD ["/bin/bash"]
