FROM progrium/busybox
MAINTAINER Dr. Stefan Schimanski <stefan.schimanski@gmail.com>

ADD registrator /bin/registrator
RUN cd /bin && chmod +x /bin/registrator

ENV DOCKER_HOST unix:///tmp/docker.sock
ENTRYPOINT ["/bin/registrator"]