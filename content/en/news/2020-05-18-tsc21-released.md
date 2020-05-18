---
title: TSC 2.1.0 released
date: 2020-05-18
author: quintus
translator:
summary: Stable version 2.1.0 released
---

The TSC team is proud to announce that after five years of
development, the new stable version 2.1.0 of The Secret Chronicles of
Dr. M. (TSC) has been [released to the public yesterday][1].

This is the first stable release of TSC 2 after version 2.0.0 was
released back in 2015. I would like to take this as an opportunity to
thank every single contributor to the new TSC version. We know that
there are still so many things that could be improved, but we believe
that after five years, it is more than overdue to issue a new release
even if some features did not make it into 2.1.0 which we would have
liked to (for instance, there is still no replacement for turtle boss
that was removed in 2.0.0). But still, this release is in many parts
better than the preceeding 2.0.0 release from 2015. New enemies, an
improved level editor interface, new music, and several bugs fixed.
And last but not least, this is the first stable version of TSC that
finally compiles again on current Linux distributions.

If you want to help TSC now for the next release, please note: **we
are urgently looking for a graphics artist**. There are numerous
tickets on the tracker open that require someone to draw SVGs for TSC,
but as of now, there is no graphic artist in our team anymore. If you
are one or know one, please speak up here on the [mailing list][2], on
the [forum][3] or in our [IRC channel #secretchronicles on
Freenode][4]! There will be no new enemies or other graphical
additions until we find a graphics artist.

The release has been tagged on the Git repository as v2.1.0 and has
been uploaded to our web server. You can find the download links
below.

We welcome Linux distributions to package this new stable version of
TSC. If you would like to package TSC and find problems with it,
please report those problems on our [tracker][5] and we'll see if we can
resolve them for the next release.

## Future of TSC

The 2.1.0 release terminates an effort of many years to finally get
TSC into a distributable state again. We have fought with numerous API
break and backward compatibility break issues from our dependencies
for this release, which probably are the largest part of source code
changes between version 2.0.0 and 2.1.0. TSC still has a large number
of dependencies, and it is a goal for future versions to reduce this
number of dependencies, so that such problems may not occur again.

It is too early to give definitive statements about TSC's future, but
we expect there to be some maintenance releases and probably smaller
feature releases over the next years. The large overhaul that should
at some point result in TSC3 however is not anywhere near to see.

## What has changed since version 2.0.0?

* Several new background music tracks
* Switched some SMC graphics for original TSC ones
* New enemies: Larry and Doom Larry, which fuse and ultimately explode
  if hit
* Improvements to level scripting
* Editor UI overhauled
* Multiple level exits with different overworld pathes possible now
* Levels load much faster compared to 2.0.0
* Secret Area markers are available in the editor
* New in-game scripting console on pressing [F7]
* Several bugfixes, including some crash fixes
* Several build fixes
* Several scripting API documentation fixes, and build documentation fixes
* Upgrade CEGUI dependency from 0.7.9 to 0.8.7
* Support for and requirement of a C++11-capable C++ compiler
* It compiles again on modern Linux distributions!
* New desert levels by datahead. They were added to the campaign in
  world 3.
* Scripting documentation system was overhauled and the dependency on
  RubyGems for the scripting API generation was dropped
* Level music is now stopped rather than faded out on death
* New great title theme music by refi64
* Scripting expansion packs are back
* Experimental build support for FreeBSD/OpenBSD

The CEGUI upgrade deserves a separate mention. CEGUI 0.8.x broke their
API and as more and more people do not have access to the outdated
CEGUI 0.7.9, it was necessary to conduct this upgrade. This upgrade
however bound so many of TSC's team resources that the 2.1.0 release
ultimately ended up with fewer new features than it was originally
intended. Now that the upgrade has been done it should be much easier
to compile TSC on modern Linux distributions than it was the case with
the old 2.0.0 stable release.

A feature that did sadly not make it into 2.1.0 is a story. We have
adopted a final story draft for the future of the game, though, which
can be found [online][6].

The levels contained in version 2.1.0 are mostly equivalent to those
in 2.0.0. Some small changes have been made to the levels, and a few
new levels included. We encourage users to provide quality levels on
the [mailing list][2] or [forum][3] for inclusion into TSC. Levels
that implement parts of the story mentioned above are preferred.

## Download

### Source Code

* Source code:     [https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz)
* PGP signature:   [https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz.sig](https://ftp.secretchronicles.org/releases/TSC-2.1.0.tar.gz.sig)
* MD5 checksum:    1f598a39667ff979d1b9075e173eac9b
* SHA256 checksum: 6a16765b4951e3d5d1ea2b84e6da8f67b0271460f0c570b53ccdab80d7396261

### Binary Downloads

#### Windows

* [Installer for 64-bit Windows 7 or later](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.exe)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win64.sha256sum))
* [Installer for 32-bit Windows 7 or later](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.exe)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-win32.sha256sum))

#### Linux

* [amd64 .deb file for Ubuntu 18.04/Linux Mint](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-amd64.sha256sum))
* [i386 .deb file for Ubuntu 18.04/Linux Mint](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-i386.sha256sum))
* [armhf .deb file for Raspbian RasPi3/RasPi4](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.deb)
  ([MD5](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.md5sum),
   [SHA256](https://ftp.secretchronicles.org/releases/TSC-2.1.0-armhf.sha256sum))

quintus<br/>
On behalf of the TSC team.

[1]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/thread/7P7NCQYUSQ3EVBR4SB6LM3WLIXWCHWTB/
[2]: https://lists.secretchronicles.org/postorius/lists/tsc-devel.lists.secretchronicles.org/
[3]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org
[4]: irc://chat.freenode.net/#secretchronicles
[5]: https://github.com/Secretchronicles/TSC/issues
[6]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/18-001.pdf
