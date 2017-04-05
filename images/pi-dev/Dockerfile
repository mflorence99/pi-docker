FROM resin/rpi-raspbian

# install curl
RUN apt-get update && apt-get install curl

# install docker
RUN curl -sSL get.docker.com | sh

# we use this all the time, so try to get a nice looking bash
COPY bashrc /root/.bashrc
RUN chmod u+x /root/.bashrc

# mount project
VOLUME /usr/src/app
WORKDIR /usr/src/app
