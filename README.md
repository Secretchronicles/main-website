Main Secretchronicles website
=============================

This repository contains the main website of the Secretchronicles
project, which is available under https://www.secretchronicles.org.

The site is completey static HTML, utilising the
[nanoc](http://nanoc.ws) site generator. It is based on Ruby, so make
sure you have Ruby (including RubyGems, if you are on a Debian-based
Linux) installed.

Viewing locally
---------------

First, install all necessary dependencies via RubyGems and Bundler. On
a Debian system, install bundler via the repositories, then use it to
install the gems for this project.

~~~~~~~~~~~~~~~~
# apt install ruby-bundler
$ cd /to/the/website/dir
$ bundle install --path .gems
~~~~~~~~~~~~~~~~

The `--path` option to `bundler` ensures that the gems are kept
logically separate from any system gems.

Then use `nanoc` to compile and serve the site:

~~~~~~~~~~~~~~~~
$ bundle exec nanoc compile
$ bundle exec nanoc view
~~~~~~~~~~~~~~~~

Browse to http://localhost:3000/en to view the main page in
English. There is no language redirect functionality on the local
site, this can only be added on an actual server.

Adding new content
------------------

On website, English pages are at /content/en and Finnish /content/fi.
To create new news page, copy old to new name with correct date in filename.
Ruby code lists files automatically, so newest news is first at website.
All page design is at layouts dir for most pages. Images are at
content/assets and CSS at content/stylesheets/default.css .
nanoc generates static pages to output directory, that can be sent to webserver
for test viewing at webtest subdomain with rsync. Rsync uses compression,
deletes from server old files that are not at new version of website,
and excludes robots.txt so it stays at server.

~~~~~~~~~~~~~~~~
cd main-website/output
rsync -avz --delete --exclude=robots.txt -e "ssh -p SSH-PORTNUMBER-HERE" . username@alexandria.DOMAIN-HERE.DOMAIN-SUFFIX-HERE-LIKE-ORG-ETC:/home/username/webtest/
~~~~~~~~~~~~~~~~

Actual updating as official webpages alexandria server official webpages
is with git, remember to also add other directories if you changed elsewhere
than on content directory:

~~~~~~~~~~~~~~~~
# Change to git repo directory
cd main-website
# Get latest changes from geite repo
git pull
# View local changed files
git status
# If you want to view source code changes
git diff
# Add new and modified files
git add content/*
# Commit locally
git commit -a -m "News article about..."
# Push to official repo
git push
~~~~~~~~~~~~~~~~

The changes will be installed to official server every midnight automatically
by cron script at server. nanoc generates static content at webserver, output
is visible at the official website.

Translating
-----------

For translating the site, simply translate all the pages below the
`content/en` directory into a new directoy `content/xx`, where `xx` is
the 2-letter code for your target language. Note that when translating
news posts, you have to keep the file name exactly as it is in
English, only translate the file content. If you add your name to the
`translator:` header, it will be shown on the translated page.

Adding new avatars
------------------

The [mailinglist web interface](https://lists.secretchronicles.org)
pulls avatar images from the main website below the `/avatar`
path. These reside in the directory `content/avatar/`. This directory
is meant to be compatible with Gravatar's GET request API as that is
what Mailman uses to request the avatar images.

Avatar images need to be of size 120 x 120 px. That's the maximum size
Mailman displays them at. An SVG is also possible as it is scaled
automatically properly by the user's browser, but it has to be a
"bare" SVG without Inkscape (or any other vendor-specific)
extensions. In Inkscape this can be requested by setting the save
format to "SVG" and not to "Inkscape SVG".

In order to add a new avatar, calculate the MD5 hash of the lowercased
e-mail address of the e-mail address the user uses to participate on
the mailing list. This can easily be done by means of the md5sum(1)
tool:

    $ echo -n someone@example.org | md5sum -

Note the `-n` option to echo(1); without it, an unwanted newline is
added and the MD5 hash is calculated incorrectly. Then place the
avatar under `content/avatar/<md5hash>.jpg`, where you replace
`<md5hash>` with the MD5 hash just calculated. Note that the file
extension has to be `.jpg`; anything else is not permissible, because
Mailman requests it exactly like that. However, it is *not* required
that the image is actually of JPG format. It is permissible to place a
PNG, GIF, or any other image format in that file, even though it ends
with `.jpg`. That's how transparency in avatars is possible (JPG
doesn't support transparency).

License
-------

Note: This license applies only to the sourcecode of the website. The
content on the website itself is subject to different licensing.

Copyright (c) 2014-2019, TSC Team

All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

1. Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
