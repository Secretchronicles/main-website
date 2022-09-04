---
title: TSC .deb packages for Ubuntu 22.04 amd64/arm64/s390x and Debian 11 amd64/i386/arm64/ppc64el/s390 available 
date: 2022-09-04
author: xet7
translator:
summary: TSC .deb packages for Ubuntu 22.04 amd64/arm64/s390x and Debian 11 amd64/i386/arm64/ppc64el/s390 available
---

xet7 has today released TSC .deb packages for many CPU platforms,
where required dependencies exist:

- Ubuntu 22.04 Jammy Jellyfish: amd64/arm64/s390x. (There is no Ubuntu 22.04 for ppc64el POWER8)

- Debian 11 Bullseye: amd64/i386/arm64/ppc64el/s390x

For these:

- amd64 is x64 PC computers

- i386 is older x32 PC computers

- arm64 is for Raspberry Pi 3 or 4, and other computers that runs that distro.

- ppc64el is PowerPC 64bit little-endian computers.

- s390x is for IBM Z Series mainframes.

These packages also now have dependency [libboost-chrono1.74.0 that was missing previously][2].
Thanks to pirate486743186 for info about missing dependency.

Lauri (xet7)<br />
On behalf of TSC team

## Download

[At Downloads page][1]

[1]: /en/download/

[2]: https://github.com/Secretchronicles/TSC/issues/703
