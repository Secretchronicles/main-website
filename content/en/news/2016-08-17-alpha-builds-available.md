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

You can grab the .deb packages from [Download page][1].

These .deb packages are compiled directly from git on our Devel branch. We make no guarantee that
these builds will work, and they most definitely are not bug free.

To install them you generally can use the ```dpkg -i "packagename"``` command,
or read the man pages on dpkg. Technically these *should* also work on Ubuntu
and its derivatives, but as said earlier, we make no guarantees.

Also, through this, we are excited to say that TSC is now in the Debian Unstable repositories.

As always, if you find a bug, **please** report it, either on our [Forum][2] or [Github][3].

  Enjoy!

-Sydney(sydney_untangle) <br />
On Behalf of the TSC team

[1]: /en/download
[2]: https://forum.secretchronicles.org
[3]: https://github.com/Secretchronicles/TSC/issues
