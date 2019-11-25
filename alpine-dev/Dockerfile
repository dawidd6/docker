# test

FROM alpine:edge

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
	echo "builder ALL=NOPASSWD: ALL" > /etc/sudoers && \
	apk update && \
	apk add alpine-sdk vim zsh zsh-syntax-highlighting && \
	adduser -D -s /bin/zsh builder && \
	addgroup builder abuild && \
	mkdir -p /var/cache/distfiles && \
	abuild-keygen -a -i && \
	mv /root/.abuild /home/builder && \
	cp /home/builder/.abuild/*.pub /etc/apk/keys && \
	sed -i -e "s@root@home/builder@g" /home/builder/.abuild/abuild.conf && \
	echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> /home/builder/.zshrc && \
	chown builder:builder -R /home/builder/.abuild && \
	chmod a+w /var/cache/distfiles && \
	chmod 755 /home/builder/.zshrc

USER builder

WORKDIR /home/builder

ENTRYPOINT ["/bin/zsh"]
