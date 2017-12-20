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
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=ubuntu)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/ubuntu.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/ubuntu)

1. trusty
1. xenial
1. zesty
1. artful

### Debian
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=debian)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/debian.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/debian)

1. jessie
1. stretch
1. buster


### Centos
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=centos)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/centos.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/centos)

1. centos7

### OpenSuse
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=opensuse)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/opensuse.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/opensuse)

1. tumbleweed

### Fedora
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=fedora)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/fedora.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/fedora)

1. fedora27

### Archlinux
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=archlinux)](https://travis-ci.org/joshuacox/rxNstall)
[![CircleCI](https://circleci.com/gh/joshuacox/rxNstall/tree/archlinux.svg?style=svg)](https://circleci.com/gh/joshuacox/rxNstall/tree/archlinux)

### Gentoo
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=gentoo)](https://travis-ci.org/joshuacox/rxNstall)

### Mac OS X
[![Build Status](https://travis-ci.org/joshuacox/rxNstall.svg?branch=macosx)](https://travis-ci.org/joshuacox/rxNstall)

Feel free to submit PRs, or just an issue requesting more, all issues
welcome here.

### Asciinema example run

This gives an example of successful run to help troubleshoot runs that
are not successful

<script src="https://asciinema.org/a/BRekluHnW58avWGUANhu648n5.js"
id="asciicast-BRekluHnW58avWGUANhu648n5" async></script>

### Env vars

I have some functions for enforcing issues I've had to work around on
various installs. They can be enabled by setting a few environment
variables to 'true' (the string).


```
export FIX_DOTFILES='true'
```

This will fix some dotfile issues

```
export NVM_DIR_ADDS='true'
```

This is an alternative and can be used in addition to the first

```
export FIX_NVM_PREFIX='true'
```

This one I use to make travis-ci's Mac OS X npm prefix go away


