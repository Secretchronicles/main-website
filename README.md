Main Secretchronicles website
=============================

This repository contains the main website of the Secretchronicles
project, which is available under http://www.secretchronicles.de.

The site is completey static HTML, utilising the
[nanoc](http://nanoc.ws) site generator. It is based on Ruby, so make
sure you have Ruby (including RubyGems, if you are on a Debian-based
Linux) installed.

Viewing locally
---------------

First, install all necessary dependencies via RubyGems and Bundler:

~~~~~~~~~~~~~~~~
$ gem install bundler
$ bundle install
~~~~~~~~~~~~~~~~

Then use `nanoc` to compile and serve the site:

~~~~~~~~~~~~~~~~
$ bundle exec nanoc compile
$ bundle exec nanoc view
~~~~~~~~~~~~~~~~

Browse to http://localhost:3000/en to view the main page in
English. There is no language redirect functionality on the local
site, this can only be added on an actual server.

Translating
-----------

For translating the site, simply translate all the pages below the
`content/en` directory into a new directoy `content/xx`, where `xx` is
the 2-letter code for your target language. Note that when translating
news posts, you have to keep the file name exactly as it is in
English, only translate the file content. If you add your name to the
`translator:` header, it will be shown on the translated page.

License
-------

Note: This license applies only to the sourcecode of the website. The
content on the website itself is subject to different licensing.

Copyright (c) 2014, SMC Team

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
