FROM jmarley/indigo-ros-core:docker1.8
MAINTAINER jmarley@redhat.com

# install ros packages
RUN apt-get update && apt-get install -y \
    --force-yes \
    ros-indigo-ros-base=1.1.4-0* \
    && rm -rf /var/lib/apt/lists/*
