FROM ubuntu:xenial

#ENV BUILD_PACKAGES='bash git wget curl locales sudo bsdtar' \
ENV BUILD_PACKAGES='bash git wget curl locales sudo bsdtar nodejs npm' \
  REACTION_ROOT='/home/reaction/reaction' \
  TOOL_NODE_FLAGS="--max-old-space-size=2048" \
  REACTIONSTALL_UPDATED=20171215

RUN DEBIAN_FRONTEND=noninteractive \
  && apt-get -qq update && apt-get -qqy dist-upgrade \
  && apt-get -qqy --no-install-recommends install \
     $BUILD_PACKAGES \
  && echo 'en_US.ISO-8859-15 ISO-8859-15'>>/etc/locale.gen \
  && echo 'en_US ISO-8859-1'>>/etc/locale.gen \
  && echo 'en_US.UTF-8 UTF-8'>>/etc/locale.gen \
  && locale-gen \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL'>> /etc/sudoers \
  && useradd -s /bin/sh -d /home/reaction reaction \
  && mkdir -p /home/reaction \
  && chown reaction. /home/reaction \
  && gpasswd -a reaction sudo \
  && groupadd -g 991 docker \
  && gpasswd -a reaction docker \
  && apt-get -y autoremove \
  && apt-get clean \
  && rm -Rf /var/lib/apt/lists/*

RUN apt-get remove -yqq nodejs npm
#RUN apt-get build-dep -yqq nodejs npm

USER reaction
WORKDIR /home/reaction

USER root
#RUN SUDO_FORCE_REMOVE=yes apt remove -yqq sudo
COPY rxNstall /home/reaction/rxNstall
RUN chown -R reaction:reaction /home/reaction
USER reaction

RUN /bin/bash -l ./rxNstall

COPY test /test
CMD [ "/bin/bash", "-l", "/test" ]
