FROM ubuntu:bionic

RUN apt-get update && \
    apt-get -y --no-install-recommends install software-properties-common && \
    add-apt-repository ppa:stephenczetty/gerbera-updates && \
    apt-get update && \
    apt-get -y install gerbera
RUN mkdir -p /root/.config/gerbera
RUN gerbera --create-config > /root/.config/gerbera/config.xml

EXPOSE 49200/tcp
EXPOSE 1900/udp

ENTRYPOINT [ "gerbera", "-p", "49200" ]
