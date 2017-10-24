---
title: Server Infrastructure Update
date: 2017-10-24
author: Quintus
translator:
summary: The project infrastructure got a major upgrade

Hello everyone,

on Sunday, 2017-10-15 our main server `alexandria` suffered from a
power outage at our sponsor's datacenter that corrupted the SQL
database. Luckily, thanks to a working backup procedure it was
possible to restore all important data except for the very newest
posts on the Chessboard forum.

However, we have taken the server outage as an opportunity to finally
upgrade our long outdated server operating system (Debian 7) to the
current Debian 9. This upgrade has now been completed. Furthermore,
former project lead Quintus (Marvin) has announced to devote some time
again into a rewrite of TSC for version 3.0.0. To support him in this,
it was decided to shut down the Chessboard instance at
forum.secretchronicles.org as Chessboard is a [software written by
Quintus himself][1] that would otherwise need active maintenance by means
of code changes in case security issues arise. This way he can now
concentrate on the actual TSC code.

This move however does not mean that there is no communication medium
left for TSC. First off, [forum.secretchronicles.org][2] has been
archived into a static copy that remains available for reference but
causes no maintenance problems anymore as its only static HTML now
(the copy has been created by means of [HTTrack][3]). You cannot log
into that site thus.

The Chessboard instance has always been a frontend to two
mailinglists, tsc-users@lists.secretchronicles.org and
tsc-devel@lists.secretchronicles.org. These mailinglists were managed
with the [mlmmj][4] software whose lack of a web interface was the
primary reason why Chessboard had originally been written. Since that
time however, other mailinglist software has evolved. Most notably,
the standard mailinglist software, [GNU Mailman][5], has seen a
drastic update in its web user interface. The old “Pipermail” UI was
dropped entirely in favour of a rewrite called “HyperKitty”, which
uses modern technology and makes for a nice and clean
experience. Consequently, the TSC project’s mailinglists have been
moved from mlmmj to Mailman, and the primary domain for interaction
with the project is now [lists.secretchronicles.org][6]. On that
website, you will find a nice web interface that allows you to
participate in the discussions on the mailinglists without having to
use email if you don't like to. HyperKitty should comfort all of those
users who have complained that Chessboard's interface looks too old.

If on the other hand you prefer the email communication (and rightly
so!), then not much changes for you. All existing mailinglist
subscriptions have been moved from mlmmj to Mailman, so there's no
need to subscribe again. The mailinglist email addresses have remained
the same as well (tsc-devel@lists.secretchronicles.org and
tsc-users@lists.secretchronicles.org). Only the administrative email
addresses (e.g., for unsubscribing) have changed, but the mailinglists’
`List-*` headers have been updated to reflect this. Even more, you can
of course unsubscribe (or subscribe) via the shiny new web interface
on [lists.secretchronicles.org][6].

Since all of this infrastructure is now completely new, it might well
be that there are errors and problems. Don’t hesitate to contact us,
ideally by posting to the tsc-users mailinglist, either via email, or
via HyperKitty.

With regard to the move of the ticket system to alexandria,
these plans are placed on hold for the moment due to lack of time. The
mlmmj to Mailman conversion with the removal of Chessboard plus the OS
upgrade have consumed quite a bit of time. These plans are not given
up, though.

Many thanks go to Lauri (xet7) who conducted the OS upgrade, to
Quintus for moving Chessboard+mlmmj to Mailman, and to [First-Root
UG][7] to the continued sponsorship of the project in form of the
`alexandria` server.

Marvin (Quintus)<br/>
On behalf of the TSC team

[1]: https://github.com/Quintus/chessboard
[2]: https://forum.secretchronicles.org/
[3]: http://www.httrack.com/
[4]: http://mlmmj.org/
[5]: http://list.org/
[6]: https://lists.secretchronicles.org/
[7]: http://first-root.com/
