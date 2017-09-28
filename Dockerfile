FROM rancher/server:v1.6.10

RUN cd ~ \
  && curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-`uname -s`-`uname -m` > docker-machine \
  && mv /usr/bin/docker-machine /usr/bin/docker-machine.bak \
  && mv docker-machine /usr/bin/docker-machine \
  && cd -

ADD userdata.yml /root