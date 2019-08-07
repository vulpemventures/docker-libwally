FROM ubuntu:18.04

# Install needed build tools  
RUN apt -y update && \
  apt -y install git curl build-essential autoconf libtool python python-dev swig

# Yarn 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -  && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt -y update && apt -y install yarn

# Clone Libwally folder
RUN git clone https://github.com/ElementsProject/libwally-core.git

WORKDIR /libwally-core

CMD ["/bin/bash"]
