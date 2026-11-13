FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        bash-completion \
        coreutils \
        gawk \
        jq \
        ripgrep \
        fd-find \
        vim \
        git \
        curl \
        wget \
        python3 \
        python3-pip \
        nodejs \
        npm \
        sqlite3 \
        file \
        unzip \
        zip \
        dos2unix \
        && rm -rf /var/lib/apt/lists/*
#        ruby \
#        perl \

WORKDIR /workspace
CMD ["/bin/bash"]