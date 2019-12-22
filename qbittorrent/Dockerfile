FROM ubuntu:bionic

RUN apt-get update && apt-get -y install qbittorrent-nox

EXPOSE 6881
EXPOSE 8080

ENTRYPOINT ["qbittorrent-nox"]
