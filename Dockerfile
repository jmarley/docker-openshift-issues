#FROM ros:indigo-ros-base
FROM jmarley:indigo-ros-base

# install ros packages
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y ros-indigo-robot=1.1.4-0* ros-indigo-rosbridge-suite libyaml-cpp0.5 && \
    rm -rf /var/lib/apt/lists/*

# Useful utility function
RUN echo "#!/bin/bash\n. /opt/ros/indigo/setup.bash && exec \$@" > /usr/local/bin/ros-env
RUN chmod +x /usr/local/bin/ros-env

COPY install /opt/ros/indigo/
COPY docs /solar/docs
RUN mkdir /configuration && cp /opt/ros/indigo/share/solar_examples/ExampleConfiguration.yaml /configuration