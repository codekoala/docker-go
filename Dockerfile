FROM codekoala/arch
MAINTAINER Josh VanderLinden <codekoala@gmail.com>

# allow build to pick up after this point if we update go
RUN pacman -Sy --noconfirm --needed \
    bzr \
    gcc \
    git \
    mercurial \
    subversion

RUN pacman -Sy --noconfirm --needed instarch/go

ENTRYPOINT ["/usr/bin/go"]
