FROM debian:buster

LABEL maintainer="David HEURTEVENT <david@heurtevent.org>"
LABEL build_date="2023-03-14"

ENV container docker
ENV DEBIAN_FRONTEND noninteractive

#Update, upgrade, clean
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

#cgroup volume
VOLUME [ "/sys/fs/cgroup" ]

# Define default command.
CMD ["bash"]
