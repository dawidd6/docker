FROM ubuntu:xenial

RUN adduser --gecos '' --disabled-password --uid 1000 dawidd6 && \
	apt-get update && \
	apt-get install -y \
	vim sudo build-essential fakeroot \
	devscripts dpkg-dev debhelper dh-make && \
	adduser dawidd6 sudo

USER dawidd6:dawidd6
