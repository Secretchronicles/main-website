---
title: Server Outage Aftermath
date: 2019-03-25
author: quintus
translator:
summary: Our server is back online.
---

As it has been communicated via [our bugtracker][1], our server,
alexandria, went down on March 12<sup>th</sup>, 2019. The most
important thing first: the server is back online, and we have brought 
all services back online already. Users of the forum interface on
lists.secretchronicles.org or the tsc-devel mailing list should pay
close attention to the section [Current State](#current-state) below
as action is required.

## What happened?

On March 12<sup>th</sup>, 2019, our server
`alexandria.secretchronicles.org` became completely unresponsive. It
neither served web pages, nor could we log in via SSH as the TCP
connections just timed out. Alexandria was a VPS server running on an
OpenVZ host and was sponsored by [First-Root UG][2], Germany. Quintus
quickly got into contact with them by raising a support ticket on that
day and they diagnosed that the server had “hung up” and could not be
rescued. As an alternative, First-Root offered to provide us with a
KVM server on March 13<sup>th</sup>, 2019. We considered all data on
the server as lost and checked our backups.

As it turns out, we had just a few months before upgraded the
operating system from Debian 8 to Debian 9. Before that upgrade, we
had automatic backups in use, but due to time constraints we didn't
set them up yet on Debian 9, although we intended to do so. Murphy's
law has no mercy, so the last backup we had available was from October
2018. Given the low activity of the project in the time since October
2018, this isn't too much of a loss, though. The source code of TSC
was entirely unaffected, and because it is stored in Git, every
developer had a recent copy, and all code is available [via
GitHub][9] anyway. **We have not lost any source code**.

It was decided that the old VPS would not be set up again, because
that would duplicate work for the TSC team, which is running low on
free time anyway. Instead, we wanted to wait for First-Root to provide
the KVM machine. During this time, which we expected to be short, all
services hosted on the secretchronicles.org domain would be
unavailable. On March 13<sup>th</sup>, 2019, quintus [opened a ticket][3] on the
bugtracker on GitHub to announce the problem publically as the
tsc-devel mailing list was unavailable due to the outage.

At this point, all communication between the TSC team members
basically happened in our IRC channel `#secretchronicles` on
freenode. Our IRC bot, furbot, was also hosted on our server, which
means that for this time no public chat logs are available on
[chatlogs.secretchronicles.org][4].

Despite some status queries, First-Root did not reply to the support
ticket raised with them after March 13<sup>th</sup>, nor did
they provide the promised KVM server. By March 24<sup>th</sup>, 2019,
we had been offline for nearly two weeks and we decided that we need to
venture for an alternative. TSC team member xet7 is involved in the
[Wekan project][5], an open-source kanban board implementation. The
Wekan project has a server that is used to [port Wekan to arm64][10] and
xet7 generously allowed TSC to move over to that server. Albeit this
server has a rather unusual CPU architecture (aarch64), it is really
powerful and is going to serve all of our hosting needs nicely. As
it's a bare metal server and not a VPS, it should be easier to fight
any problems arising with the server.

On March 24<sup>th</sup>, the new server was set up and DNS RRs were
updated. The old VPS is now out of use.

## Current state

All services have been restored since noon of March 25<sup>th</sup>, 2019. In
particular, our IRC bot is logging again to
[chatlogs.secretchronicles.org][4].

The new server provided by the Wekan project runs Ubuntu 18.04 instead
of Debian 9. We took the opportunity to switch our Mailman 3
installation from a custom one over to one based on the mailman3
packages in the Ubuntu repositories, as this should lower the
maintenance overhead. As the versions in use were different, it was
not possible to just copy the database over from the backup of
2018-10-28. This has the following consequences:

* If you registered to the web interface or subscribed to the
  tsc-devel mailing list after 2018-10-28, you lost your account and
  subscription. You need to register and/or subscribe again.
* If you were subscribed before 2018-10-28 and use only e-mail to interact
  with the tsc-devel mailing list, you don't need to do anything. You
  have already been subscribed again.
* If you were registered before 2018-10-28 and use the [web forum
  interface][7] to interact with tsc-devel, you have been switched to
  an e-mail-only subscription for technical reasons, i.e. the forum
  account was lost. You need to go to the [web forum interface][7]
  and re-register with the address you receive e-mails from the forum
  at. The forum will automatically match your subscribed e-mail
  address to the forum account you create. Once you have logged in,
  you can configure e-mail notifications of posts by clicking on
  “Manage Lists” on the top right (alternatively, [follow this link
  after login][8]). Click the red “Unsubscribe” button on the page
  for the tsc-devel mailing list to stop receiving e-mails from the
  list. You can still post via the web interface after doing this.
* If you want to delete your subscription without creating a forum
  account, please join our IRC channel `#secretchronicles` on
  chat.freenode.net and request this there.

The other mailing list, tsc-users, has not been restored, as it never saw
any serious traffic. All discussion, even if it is user
discussion like submission of levels, should just happen on tsc-devel
from now on. All subscriptions to the tsc-users mailing list have been
cancelled.

We apologize for the inconvenience caused by the Mailman version switch.

## Future

We are going to evaluate our backup strategy and quickly get automatic
backups up and running for the new server.

Additionally, beyond restoring the services that we had on the old
VPS, we are considering the setup of more infrastructure. For instance,
the Wiki, which we set to sleep after it got spammed, might see a
rennaissance. The setup of a CI service is in discussion, as are
automated nightly builds. TSC team member kirbyfan suggested
installation of Discourse, a rails-based web forum software.

quintus<br/>
on behalf of the TSC team.

[1]: https://github.com/Secretchronicles/TSC/issues/649
[2]: https://www.first-root.com/
[3]: https://github.com/Secretchronicles/TSC/issues/649
[4]: https://chatlogs.secretchronicles.org
[5]: https://wekan.github.io/
[6]: https://lists.secretchronicles.org/hyperkitty
[7]: https://lists.secretchronicles.org/hyperkitty/list/tsc-devel@lists.secretchronicles.org/
[8]: https://lists.secretchronicles.org/postorius/lists/
[9]: https://github.com/Secretchronicles/TSC
[10]: https://blog.wekan.team/2018/01/wekan-progress-on-x64-and-arm/index.html
