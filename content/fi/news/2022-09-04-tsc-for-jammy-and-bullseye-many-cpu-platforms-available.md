---
title: TSC .deb paketit Ubuntu 22.04 amd64/arm64/s390x ja Debian 11 amd64/i386/arm64/ppc64el/s390x saatavilla
date: 2022-09-04
author: xet7
translator: xet7
summary: TSC .deb paketit Ubuntu 22.04 amd64/arm64/s390x ja Debian 11 amd64/i386/arm64/ppc64el/s390x saatavilla
---

xet7 on tänään julkaissut TSC .deb paketit monille CPU alustoille,
joille vaaditut riippuvuudet ovat saatavilla:

- Ubuntu 22.04 Jammy Jellyfish: amd64/arm64/s390x. (Ei ole Ubuntu 22.04:sta ppc64el POWER8:lle)

- Debian 11 Bullseye: amd64/i386/arm64/ppc64el/s390x

Näistä:

- amd64 on x64 PC-koneet

- i386 on vanhemmat x32 PC-koneet

- arm64 on tietokoneille Raspberry Pi 3 tai 4, ja muut tietokoneet jossa distro toimii.

- ppc64el on PowerPC 64bit litte-endian tietokoneille.

- s390x on IBM Z sarjan mainframe tietokoneille.

Näillä paketeilla on nyt myös riippuvuus [libboost-chrono1.74.0 joka puuttui aiemmin][2].
Kiitos pirate486743186 tiedoista että on puuttuva riippuvuus.

Lauri (xet7)<br />
TSC tiimin puolesta

## Lataa

[Lataukset sivulta][1]

[1]: /fi/download/
[2]: https://github.com/Secretchronicles/TSC/issues/703
