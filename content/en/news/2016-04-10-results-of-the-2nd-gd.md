---
title: Results of Second General Discussion
date: 2016-04-10
author: Quintus
translator:
summary: Summary of the 2nd TSC General Discussion.
---

Yesterday, large parts of the TSC Development team met in IRC to
conduct the Second General Discsussion ([original schedule][1]). In
this article, I summarise what was discussed, what was decided, and
what not was decided.

First, here’s the (anchored) link to the full [chatlogs][2], so that
you can read what exactly happened if you want.

Voting Rules Changes
--------------------

The team voted on the following change proposal:

<!-- Note to translators: Please do not translate the proposal
below. It is a verbatim copy of the proposal sent to the ML. -->

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                 Art. 1

§2(2) is changed to “The vote requires that two thirds of the team
members voting are in favour of adding the new person to the team.”.

§3(1)(Nr.3)(2nd sentence) is changed to “This requires a two thirds
majority of those voting, and the candidate for removal is not allowed
to participate in the vote.”

In §20 the words “of the team members” are replaced with “of all
existing team members”.

                                 Art. 2

A new §5a is introduced after §5 with the following text:

§5a IRC Voting Announcement

(1) For votings held in IRC — as an exception to § 5(2)(Nr.3) — it is
sufficient to announce all available voting options in IRC prior to
taking the votes.

(2) If at least three team members are available in IRC and are not just
idling, it is possible to waive the two-week preparation interval and
vote immediately. The waiver requires all non-idling team members in the
chatroom to agree on it.

(3) Any team member can challenge a voting made under the conditions
of (2) above until two weeks after the declaration of results have
passed by approaching the project lead accordingly. If the voting is
challenged, it is treated the same way as if it failed (§12).

                                 Art. 3

These changes enter into force immediately after the Declaration of
Results of the vote for accepting them.

Any votes running at the moment these changes enter into force are
transferred to the changed version of the rules and do not remain under
the old version.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Of 8 team members allowed to vote, 7 participated and voted in favour
of it. Thus, the required 2/3 majority was reached, and the changes are
in force now.

The newly compiled voting rules document is available [online in the
documents reopsitory now][3].

Team Additions
--------------

Under the new rules, the team then continued with voting on adding
kirbyfan and skarfester to the team. [Both][4] [votes][5]
succeeded. As of now, the two just need to accept their membership on
GitHub.

Bugtracker Software
-------------------

After [a fairly long discussion][7], all team members decided in consent to
chose [Redmine][6] as our future bugtracking system as it has a lot of
nice and useful features (like especially dependencies between tasks
as metadata with useful summaries in parent tickets). In addition, it’s written
in Ruby, which most of us find a nice language, allowing us to fix
things in Redmine itself if we are uncontent with it.

Translation Software
--------------------

This evergreen of discussion topic was meant to be cleared once and
for all in the GD, but it didn’t happen. Albeit we have voted twice on
the topic, no winning option could be determined -- two options always
received the same number of votes. As per §12 of the Voting Rules,
this means the vote is failed and has no binding result, and the topic
can be voted over again.

The failure of vote, which can spectacularly be seen [in the
chatlogs][8], was most likely a result of the low participation of
only 62.5% of the team members, i.e. 5 team members, and one of them
abstained. It was determined we need to repeat the voting on the
mailinglist.

Audience, Story, et al.
-----------------------

Another topic we were unable to decide on was audience and story
guidelines. It was noted that this discussion cannot be brought to
conclusion without participation of Bugsbane, who was not available in
the GD and could not be reached by email, but who is the project’s
lead artist and thus must have a word to speak on this topic. Still,
some interesting aspects were noted, which are worth to read [in the
chatlogs][9]. This was also the topics several documents (including
story suggestions) were submitted to before. Since there have been no
decisions, these documents might be of value for further work, and are
thus referenced here:

<!-- Note to translators: Please do not translate the titles. They are
copied from the documents themselves -->

* [DNr. 16/1: Unofficial Story Development Document][12]
* [DNr. 16/2: Story Principles and Decisions for the Secret Chronicles
  of Dr. M.][13]
* [DNr. 16/3: The Secret Chronicles of Dr. M. Story Development
  Document - Version 2][14]
* [DNr. 16/4: Proposal for a TSC story][15]
* [DNr. 16/6: Input on Meeting Topics][16]

As a result, we postponed topics 6-10 on the schedule.

Life energy system
------------------

A more successful [discussion][10] arose around the topic of life
energy and its involvement into game mechanics. The discussion
benefitted from thoughts by kirbyfan and Luiji, who missed everything
prior but managed to join the channel during this topic.

In consent, it was determined that the current one/two hit + lifes +
saves + gameover system is to be replaced with a Rayman-style system,
which means that the player is given some amount of Hit points
(HP). In levels, there will be check points distributed properly (task
for level designers), and when the player’s HP sink to 0, he is reset
to the last check point he passed. In this system, there is neither
manual saving, neither lifes, neither game over. It does not suffer
from the problem of infinite points (this saves) by repeatedly jumping
on Army and is logically correctly build, i.e. there is no rivalty
between different ways to (re)store game progress.

It was further determined that powerups shall not be lost at the first
hit a player receives, but there have not been further decisions on
when exactly this shall happen then instead.

The Rayman-style progress system was found to be a good balance
between not having deathly pits at all, and having too many of them as
part of tricky jump sections which may cause frustration on the
player’s side. This way, we are able to keep deathly pits, since they
will simply have the effect of setting the player’s HP to 0, which
means resetting him to the last check point. The discussion about
level designers who need to place respawn points for abysses is thus
obsolete now.

CEGUI vs. SFGUI
---------------

This was the last topic on the schedule, and with regard to the work
Quintus has already placed into the CEGUI porting, it was [decided][11] we go
with CEGUI. SFGUI was also mentioned to be still heavily developed,
which was said to not be suitable for our game, which needs a stable
API to develop against.

Conclusion
----------

Once again, the GD managed to get the largest part of the TSC team
into the IRC channel, allowing to talk to people one usually only sees
on the tracker or the forum. The team grew by 2 members, and the
decision was made to choose Redmine as our bugtracking system for the
future. No decision was made on the story topic, but the life and
energy system was finally defined to use a Rayman-like model without
lifes, gameovers, and manual saving.

[1]: http://lists.secretchronicles.de/tsc-devel/2016/04/0000004.html
[2]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T17:13:07+00:00
[3]: https://github.com/Secretchronicles/documents/raw/master/votingrules/votingrules-2016-04-09.pdf
[4]: https://github.com/Secretchronicles/documents/blob/master/votes/004.md
[5]: https://github.com/Secretchronicles/documents/blob/master/votes/005.md
[6]: https://www.redmine.org/
[7]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T17:40:52+00:00
[8]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T18:16:08+00:00
[9]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T19:07:40+00:00
[10]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T19:47:28+00:00
[11]: http://chatlogs.secretchronicles.de/htmllogs/2016-04-09.log.html#msg-2016-04-09T21:00:11+00:00
[12]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/16-001.pdf
[13]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/16-002.pdf
[14]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/16-003.pdf
[15]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/16-004.pdf
[16]: https://github.com/Secretchronicles/documents/raw/master/gd/documents/pdf/16-006.pdf
