FROM debian:unstable

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    devscripts \
    git-buildpackage \
    pristine-tar \
    sudo
RUN echo "deb http://deb.debian.org/debian unstable main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list
RUN useradd user && echo "user ALL=NOPASSWD: ALL" > /etc/sudoers

USER user:user

WORKDIR /workdir

CMD ["/bin/bash"]
