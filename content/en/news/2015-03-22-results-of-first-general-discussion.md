---
title: Results of First General Discussion
date: 2015-03-22
author: Quintus
translator:
---


> ### Summary of what happened in IRC yesterday.
>
> Yesterday, the [First General Discussion][1] has been held on IRC. For
> those of you who weren’t able to participate, you can read the entire
> thing in the IRC logs as protocolled by our friendly _furbot_:
>
> [Chatlogs][6]
>
> What follows is a summary of the decisions that have been made during
> the discussion.
{: .summary}

Voting process
--------------

The voting process as suggested by _Quintus_ has been accepted with
slight modifications. For further General Discussions, the voting
process with run like this:

> 1. We try to find a consent on a topic, where everyone agrees to.
> 2. If this is not possible, we will hold a vote.
>
> "Vote" means, anyone from the TSC team is free to post "I vote XYZ"
> or "I abstain".
> This is an "open vote".
> If someone requests a covert vote due to thinking he doesn’t want to
> reveal how he votes, this is possible.
> Before we start voting, I will ask if anyone requests that.

Every member of the TSC team is allowed to vote. Team member is, who
is listed as a member of the [_Secretchronicles_ organisation on
GitHub][2].

It was determined we have to clean up with the team status on some
people. _sauer2_ should be invited to the team, the existing team
members have to publish their membership status, and we need to define
a timeframe when people are removed from the team due to inactivity
(suggested was half a year).

### Tasks ###

* Publish team membership
* Invite _sauer2_
* Define removal timeframe

### Decision result ###

Participating team members: 6<br/>
In favour: 6<br/>
Against: 0<br/>
Abstained: 0

Turtle boss and moon
--------------------

The turtle boss will be removed for 2.0.0 due to the lack of
replacements. sydney’s moon cookie will be used as the replacement for
the current moon.

It was also decided that jobromedia’s title and credit music are
removed from 2.0.0 unless we receive a license confirmation from
him. As an interim solution, the `hyper_1` music is reinstalled.

Both the turtle boss and the two songs will be re-added in the 2.x
series if possible and not delayed to 3.x.

The turtle boss level is replaced by the _Mountain Trials_ level on
the world map.

A new topic was suggested for replacing the existing Mario-like music,
but we didn’t make it due to time constraints. A new task on the
tracker has to be added for that.

### Tasks ###

* Add task for reviewing Mario-like music in existing levels
* Replacing turtle boss level
* Replacing title/credit music
* Removing turtle boss
* Add cookie moon

### Decision result ###

Participating team members: 6<br/>
In favour: 6<br/>
Against: 0<br/>
Abstained: 0

2.x and 3.x series
------------------

This was a hotly debated topic, with the surprising result of everyone
agreeing on a solution. To keep long story short (see IRC logs for the
full discussion):

* Turtle boss and music replacements are guaranteed to be added to 2.x
  if replacements are proposed on the tracker.
* The 2.x series is targetted for a short life. Shortly before the 3.0.0
  release, a fixed dropping date for the 2.x series is to be
  set. Until the 3.0.0 release, 2.x can receive new features, but the
  features that require breaking compatibility will directly be
  implemented in the 3.x series and not backported to 2.x. 2.x and 3.x
  are thus developed in parallel until 3.0.0, with a quick 3.0.0
  release being the target.
* Estimation of 2.x lifetime is half a year upto one year at maximum.
* After the 3.0.0 release, 2.x will only receive critical bugfixes
  until the defined dropping date, then it will be abandoned.

### Decision result ###

Participating team members: 6<br/>
In favour: 6<br/>
Against: 0<br/>
Abstained: 0

2.0.0 release date
------------------

A tentative release has been set to the 2015-04-26 for the final 2.0.0
release. We will try hard to fulfill this, but if we can’t, we have to
postpone a bit. There’s a list of tickets that need to be resolved [on
the tracker][3].

Participating team members: 6<br/>
In favour: 6<br/>
Against: 0<br/>
Abstained: 0

Eyes, hedge replacement, and the story
--------------------------------------

Topics 6 and 7 from the schedule were combined into one, only to
divide them up later on again.

As for topic 7, there are two large story draft documents that need to
be read before a decision can be made. Hence, deciding on this topic
has been postponed.

The discussion on eyes and hedges was also long and heated. It wasn’t
possible to resolve this topic in consent, and it was noted that with
_sydney_ and _Bugsbane_ the two main protagonists of the discussion —
the artists — were missing. Therefore, the final discussion on the
amount of eyes in the game has been postponed indefinitely until
_Bugsbane_ shows up again. As an interim compromise,

* _sydney_’s hedge replacement stays in 2.0.0.
* The eyes on the background images are removed.

### Tasks

* Read [datahead’s][4] and [danfun64’s][5] story documents
* Remove eyes on background images

Level format
------------

Topic 8 was skipped as the main points have been mentioned in the 2.x
and 3.x discussion already. 3.x will start with the 2.0.0 release and
it can break level format as hard as it needs to. With 3.0.0 release,
2.x goes into maintenance mode to be finally dropped after a short
time.

And the other topics?
---------------------

The discussion was estimated at 2 hours and took 3,5 hours until
here. People left one by one, and thus it was decided to skip the rest
of the schedule, which were topics 9 – 12. It was also noted topic 10
needs _Luiji_’s input, who wasn’t available.

[1]: /en/news/2015/03/12/first-general-discussion/
[2]: https://github.com/orgs/Secretchronicles/people
[3]: https://github.com/Secretchronicles/TSC/issues?q=is%3Aopen+is%3Aissue+milestone%3A%22Version+2.0.0%22
[4]: http://wiki.secretchronicles.de/Story%20Development%20Document%20-%20Version%202
[5]: http://www.mediafire.com/view/igovgwcf4pizc8b/TSC-DF64.odt
[6]: http://chatlogs.secretchronicles.de/htmllogs/2015-03-21.log.html#msg-2015-03-21T20:00:52+00:00
