#!/bin/bash
set -e

BUILD_PACKAGES='bash git wget curl locales tar nodejs npm ca-certificates'

DEBIAN_FRONTEND=noninteractive \
  && apt-get -qq update && apt-get -qqy dist-upgrade \
  && apt-get -qqy --no-install-recommends install \
     $BUILD_PACKAGES \
  && echo 'en_US.ISO-8859-15 ISO-8859-15'>>/etc/locale.gen \
  && echo 'en_US ISO-8859-1'>>/etc/locale.gen \
  && echo 'en_US.UTF-8 UTF-8'>>/etc/locale.gen \
  && locale-gen \
  && useradd -s /bin/sh -d /home/reaction reaction \
  && mkdir -p /home/reaction \
  && chown reaction. /home/reaction \
  && apt-get remove -yqq nodejs npm \
  && apt-get -y autoremove \
  && apt-get clean \
  && rm -Rf /var/lib/apt/lists/*
