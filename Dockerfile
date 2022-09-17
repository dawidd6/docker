FROM ubuntu:22.04
RUN apt-get update && apt-get install --no-install-recommends -y \
#ansible
#ansible-lint
    bat \
    curl \
    diffoscope \
    docker.io \
    dos2unix \
    fish \
    fzf \
    gh \
#    ghorg \
    git \
    golang-go \
    htop \
    ipcalc \
    jq \
    lm-sensors \
    ncdu \
    neofetch \
    neovim \
    nmap \
    parallel \
    perl \
    python3 \
    python3-pip \
    ruby \
    shellcheck \
    sshpass \
    trash-cli \
    tree \
    wget \
    xsel
RUN wget -P /usr/local/bin https://github.com/so-fancy/diff-so-fancy/releases/download/v1.4.3/diff-so-fancy && \
    chmod +x /usr/local/bin/diff-so-fancy
RUN mkdir -p /tmp/ghorg && \
    cd /tmp/ghorg && \
    wget https://github.com/gabrie30/ghorg/releases/download/v1.8.7/ghorg_1.8.7_Linux_x86_64.tar.gz && \
    tar -xaf ghorg_*.tar.* && \
    mv ghorg /usr/local/bin/ && \
    rm -rf /tmp/ghorg
