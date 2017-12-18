# reactioNstall

[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/master.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/master)
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=master)](https://travis-ci.org/joshuacox/rxNstall)
[![Waffle.io - Columns and their card
count](https://badge.waffle.io/joshuacox/rxNstall.svg?columns=all)](https://waffle.io/joshuacox/rxNstall)

Install Reaction PDQ with this
#### oneliner:

```
curl -L https://git.io/rxNstall | bash
```

This is an UN-official installer for [Reaction Commerce](https://reactioncommerce.com/).

I'd like to support all Linux distros.
At the moment there are Dockerfiles in this repo meant to test all of the major distros.
They also document the bare minimum packages I install before running this script (curl, git, etc).

for example look at this [line](for xenial):

```
ENV BUILD_PACKAGES='bash git wget curl locales tar nodejs npm ca-certificates
```

There is a similar in each of the Dockerfiles.

Please submit an issue if yours is not present, or feel
free to submit a Pull Request.

Do not ask for support from the official
reaction team.  This is a solo experiment, and the only place to receive
support is by submitting an issue
[here.](https://github.com/joshuacox/rxNstall/issues)

## Requirements

the same dependencies as node and npm, I usually install them with the
package manager and then immediately remove them (this has much the
effect as build-dep on a debian system, minus the requirement of a
source repo).  Then the oneliner will install the latest lts release of
node 8 'carbon' using nvm.


## Supported distros

### Ubuntu
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/ubuntu.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/ubuntu)

1. trusty
1. xenial
1. zesty
1. artful

### Debian
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/debian.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/debian)

1. jessie
1. stretch
1. buster


### Centos
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/centos.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/centos)

1. centos7

### OpenSuse
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/opensuse.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/opensuse)

1. tumbleweed

### Fedora
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/fedora.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/fedora)

1. fedora27

### Archlinux
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/archlinux.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/archlinux)

### Gentoo
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=gentoo)](https://travis-ci.org/joshuacox/rxNstall)

### Mac OS X
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=macosx)](https://travis-ci.org/joshuacox/rxNstall)

Feel free to submit PRs, or just an issue requesting more, all issues
welcome here.
