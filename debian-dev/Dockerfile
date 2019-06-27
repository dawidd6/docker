FROM debian:unstable

RUN echo "deb http://deb.debian.org/debian unstable main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://deb.debian.org/debian unstable main contrib non-free" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y --no-install-recommends \
    lintian \
    reportbug \
    devscripts \
    git-buildpackage \
    pristine-tar \
    debhelper \
    gnupg \
    dh-make \
    dh-make-golang \
    git \
    sudo \
    equivs \
    dose-extra \
    dctrl-tools
RUN useradd --create-home user
RUN echo "user ALL=NOPASSWD: ALL" > /etc/sudoers

USER user:user

WORKDIR /workdir

CMD ["/bin/bash"]
