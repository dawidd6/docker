FROM ubuntu:bionic

RUN apt-get update && apt-get -y install gerbera
RUN mkdir -p /root/.config/gerbera

EXPOSE 49152
EXPOSE 1900

ENTRYPOINT [ "gerbera","-p", "49152" ]
