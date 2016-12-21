---
title: Corrupt Win32 installer on FTP
date: 2015-10-13
author: Marvin Gülker (Quintus)
translator:
summary: There was a corrupt binary of the Win32 installer on the FTP.
---

Several of our users noticed some weird behaviour of the game when run
on Windows, manifesting itself most notably in crashing when loading
the first level in the first world from the worldmap (it did not crash
when the level was loaded directly from the level menu). There was a
report [on the forum][1] and one separately [in the tracker][2] about
the issue, which I then traced down to a faulty binary on our FTP
server. It is not clear where the binary got damaged, but a new
installer generated from the very same code as the original 2.0.0
installer did not exhibit the issue anymore. I have concluded that
during copying it around between my computers or even during upload to
alexandria the binary got defunct somehow. We’ll probably never find
the root cause of the problem.

I uploaded a new Win32 installer to the FTP that replaces the faulty
2.0.0 Win32 binary. If you downloaded and installed TSC 2.0.0 between
2015-08-17 and 2015-10-13 we advise you to uninstall the version you
downloaded, [download the new installer][3], and install that one. The
links on the “Download” page have been adjusted accordingly as well,
including the MD5 and SHA256 checksums. The old, corrupt binary
remains on the FTP for examination purposes under the name of
`tsc-2.0.0-win32.defunct.exe` and should not be used by endusers (and
is not linked to anywhere).

We apologise for the inconvenience, but errors are human. We do want
to say Thank You to the users who reported the problem with us,
because as all of the developers are using Linux systems, we would
probably not have noticed the corrupt binary at all without their
reports.

Marvin Gülker (_Quintus_)<br/>
On behalf of the TSC development team.

[1]: https://forum.secretchronicles.org/topics/285
[2]: https://github.com/Secretchronicles/TSC/issues/452
[3]: ftp://ftp.secretchronicles.org/releases/TSC-2.0.0-win32.exe
