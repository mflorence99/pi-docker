FROM resin/rpi-raspbian

# install curl
RUN apt-get update && apt-get install curl

# install docker
RUN curl -sSL get.docker.com | sh

# install node and npm
RUN apt-get update \
 && apt-get upgrade \
 && curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - \
 && apt-get install nodejs 

# download and install gulp
RUN npm install -g gulp

# download and install typescript
RUN npm install -g typescript

# we use this all the time, so try to get a nice looking bash
COPY bashrc /root/.bashrc
RUN chmod u+x /root/.bashrc

# mount project
VOLUME /usr/src/app
WORKDIR /usr/src/app
