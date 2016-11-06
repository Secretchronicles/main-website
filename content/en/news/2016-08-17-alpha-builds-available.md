---
title: Alpha Builds Now Available
date: 2016-08-17
author: Sydney
translator:
summary: Alpha Builds Of TSC Are Now available for Debian users
---

Over the past year Muammar, who is part of the Debian packaging
team, has been putting alot of effort into compiling TSC for Debian, and through
his work, and some recent dependency changes on TSC's part, he has successfully been able to package
TSC as a .deb, and have everything work properly. And through that, we now have access
to pre-built .deb packages, giving us the ability to install TSC on Debian/Debian based systems
without the need of compiling.

You can grab the .deb packages using the links below. The first two packages are both required for the game
to work properly, and the third packages our awesome music, so it is recommended to install that one as well.
These are for 64 bit systems only.  <br />

[tsc_data_2.1.0+git20160813-1_all.deb][1]

: MD5 sum:<br>2424138bee4b74626e889a1b847e8bc1<br>
  SHA256 hash:<br>f6a5e71663869f69da25050e6fce9618f1f9fc38612ccf78e6ea36e8768908e6

[tsc_2.1.0+git20160813-1_amd64.deb][4]

: MD5 sum:<br>c1f4a1b1f66f7d1d5fde7303043dfd68<br>
  SHA256 hash:<br>b8afc411e14a4af7df588d283f4cefb148cfd5ca277d7be80b5be84b6d1fa4d3

[tsc-music_2.1.0+git20160813-1_all.deb][5]

: MD5 sum:<br>ee25066856582b1aac2b0b6b28ab052b<br>
  SHA256 hash:<br>ff1489ed7f6ea778ea5feca0cac93d2143a49f0492312649d48a053538c10996

These .deb packages are compiled directly from git on our Devel branch. We make no guarantee that
these builds will work, and they most definitely are not bug free.

To install them you generally can use the ```dpkg -i "packagename"``` command, or read the man pages on dpkg. Technically these *should* also work on Ubuntu and its derivatives, but as said earlier, we make no guarantees.

Also, through this, we are excited to say that TSC is now in the Debian Unstable repositories.

As always, if you find a bug, **please** report it, either on our [Forum][2] or [Github][3].

  Enjoy!

-Sydney(sydney_untangle) <br />
On Behalf of the TSC team

[1]: ftp://ftp.secretchronicles.de/alpha/tsc-data_2.1.0+git20160813-1_all.deb
[2]: http://forum.secretchronicles.de
[3]: https://github.com/Secretchronicles/TSC/issues
[4]: ftp://ftp.secretchronicles.de/alpha/tsc_2.1.0+git20160813-1_amd64.deb
[5]: ftp://ftp.secretchronicles.de/alpha/tsc-music_2.1.0+git20160813-1_all.deb
