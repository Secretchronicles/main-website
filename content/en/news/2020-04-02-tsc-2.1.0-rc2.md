---
title: Updated packages for TSC 2.1.0-rc2 released
date: 2020-05-10
author: xet7
translator:
summary: Updated packages for Second Release Candidate of 2.1.0 has been released.
---

In RC2 there was [missing dependency libboost-chrono][1] that has
now been added to all RC2 .deb packages. Thanks to agrr for reporting
missing dependency and xet7 for building updated packages.

RC2 Windows installers have not needed changes.

### Binary Downloads

At [Downloads Page][2] are .deb packages and Windows installers.

## About Second Release Candidate of 2.1.0

quintus [announced RC2 at mailinglist][3] at 2020-04-26.
xet7 copied that announcement to this news below.

xet7<br/>
On behalf of the TSC team.

## Second Release Candidate of 2.1.0 released

From quintus:

As the project lead of The Secret Chronicles of Dr. M. (TSC), I am
pleased to announce that the second Release Candidate (RC2) of the new
TSC version 2.1.0 is now available. The release has been tagged on the
Git repository as v2.1.0-rc2 and has been uploaded to our web server.
The source code can be found at the following URLs:

* Source code:     https://ftp.secretchronicles.org/releases/TSC-2.1.0.rc2.tar.gz
* PGP signature:   https://ftp.secretchronicles.org/releases/TSC-2.1.0.rc2.tar.gz.sig
* MD5 checksum:    2b81a441cd963428bff46f19c2604150
* SHA256 checksum: 377600c13c4a16b249a3879d6d9169ca75ae476d97824218f29a91fe482a2fb1

The TGZ file has a total size of slightly more than 240 MiB. Please
consider this before downloading.

We apologise for the delay since last RC version, but free-time
development tends to be difficult to coordinate.

## What has changed since RC1?

* Problem with the "Options" menu tab bar on  Hi-DPI displays was
  probably fixed (ticket #681, problem found by Öyvind Sæther)
* Problem with character encoding in translated HUD messages was fixed
* New level desert_fortress
* Added three levels to world_3, including desert_fortress.

Actually these are more changes than there should be in an RC, but we
thought they're small enough to include them directly. As a result, I
have decided to issue a second RC instead of the final release.

## When can we expect the final release?

This is the Second Release Candidate. If no serious problems are
discovered until 2020-05-03, version 2.1.0 is going to be released
shortly after that date.

## What happens in the RC phase?

The code is now considered to be final for the upcoming release. The RC
phase is the last opportunity to test the game for serious problems;
minor problems will not be fixed. No further changes will be made that
are not related to serious problems. It is not expected that the game
still contains serious problems.

## Can I help TSC as a user now?

You can test the RC2 and see if you find problems that prevent the game
from working. Please report such problems [here][2] or
[on our bug tracker][4] (requires a GitHub account).

Sadly no nearly new level submissions were made during the beta phase, thus
version 2.1.0 will not contain much different levels from version 2.0.0.
Once version 2.1.0 has been released, we encourage all users to submit
quality levels for inclusion in a subsequent release.

quintus<br/>
On behalf of the TSC team.

[1]: https://github.com/Secretchronicles/TSC/issues/683
[2]: /en/download/#development-version
[3]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/thread/C2MYMC5C45OUGKWOKGND5LV6CAKNABK3/
[4]: https://github.com/Secretchronicles/TSC/issues
