FROM debian:unstable

RUN apt-get update
RUN apt-get install -y devscripts
RUN echo "deb http://deb.debian.org/debian unstable main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list

WORKDIR /mnt

CMD ["/bin/bash"]
