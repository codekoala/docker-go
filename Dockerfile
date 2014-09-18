FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

RUN pacman -Sy --noconfirm --needed \
    bzr \
    gcc \
    git \
    mercurial \
    subversion \
    instarch/go

ENTRYPOINT ["/usr/bin/go"]
