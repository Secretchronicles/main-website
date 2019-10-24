---
title: Updated Windows and Ubuntu 18.04 Alpha Packages Available
date: 2019-10-24
author: xet7
translator:
summary: Updated Windows and Ubuntu 18.04 Alpha Packages Available
---

**Windows**

Originally there was Windows version of TSC, but because of many code changes,
building Windows version did not work for many years, until now.

Thanks to hgdagon and quintus for code changes required, and xet7 for building
on Windows, we now have a prebuilt Alpha installer packages for Windows.

Alpha installer was updated 2019-10-24.

To install it head over to our [Downloads Page][1]

**Ubuntu 18.04**

Thanks to Mario(Boospy) from the Github Tracker, we now have a prebuilt 64bit Alpha .deb
package for Ubuntu 18.04. To install it head over to our [Downloads Page][1] to get the
latest package.

To install the package, first cd into the folder where you downloaded the package to:

~~~~~~~~~~~~~~~~~~~~~
cd Downloads/
~~~~~~~~~~~~~~~~~~~~~

Then run:

~~~~~~~~~~~~~~~~~~~~~
sudo apt install ./tsc_2.1.0+packagename.deb
~~~~~~~~~~~~~~~~~~~~~

Apt will take care of the installation and all required dependencies. After the install is finished you can launch TSC through the<br>
new `The Secret Chronicles of Dr. M.` entry in your application menu or by running the `tsc` command in your terminal.

NOTE: You must use apt, not apt-get to install the package, as the older apt-get cannot deal
with installing .deb packages and resolving dependencies from a users home directory. You could
also use `dpkg -i` to install the package, then run `apt-get install -f` to repair the broken dependencies.

Alpha installer was updated 2019-10-15.

**Downloads**

At [Downloads Page][1]

[1]: /en/download/#development-version

xet7<br />
On behalf of TSC team
