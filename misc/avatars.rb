#!/usr/bin/ruby
# -*- coding: utf-8 -*-
# Copyright (C) 2019 The TSC Contributors.
# Written by quintus.
#
# All Rights Reserved.
#
# Summary:
# This CGI script allows users to change their forum avatar.
#
# Description:
# TSC runs a mailing list which is mirrored to a web forum at
# https://lists.secretchronicles.org by means of the Hyperkitty
# software, a component of Mailman 3. Hyperkitty shows an avatar
# for each post's author next to the post. This avatar is normally
# requested from Gravatar, but that has been disabled for privacy
# reasons in Hyperkitty's configuration file. Instead, avatars
# are pulled from https://www.secretchronicles.org/avatar/.
# That URL is mapped by the HTTP frontend server to the path
# specified below with AVATAR_PATH, /var/www/avatar. The
# purpose of this CGI script now is to allow users to write their
# avatar into that path. Pin it behind any URL that does not
# collide with anything else.
#
# Note: The frontend HTTP server should be configured to return
# a dummy image (none.jpg below AVATAR_PATH) if the requested
# file does not exist.

require "cgi"
require "erb"
require "syslog"
require "fileutils"
require "digest/md5"
require "tempfile"

# Where to store the avatar images on the file system
# (ensure the HTTP server is set up for this directory).
AVATAR_PATH = "/var/www/avatar".freeze

# Maximum file size of a single avatar.
MAX_AVATAR_SIZE = 1024 * 100 # 100 KiB

# Page template for all responses. Ensure it contains
# <%= content %> somewhere.
HTML_TEMPLATE = ERB.new(<<HTML)
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8"/>
    <title>TSC Avatar Service</title>
    <style type="text/css">
body { font-family: sans-serif; }
h1 {
  color: #0a8ce0;
  border-bottom: 2px solid #0a8ce0;
}
h2 {
  color: black;
  border-bottom: 1px solid black;
}
form {
  margin: 8px;
  background-color: #dddddd;
  border: 1px solid black;
  padding: 4px;
}
    </style>
  </head>
  <body>
    <%= content %>
  </body>
</html>
HTML

# Input form for the upload page.
HTML_FORM = <<HTML
<h1>Change your avatar</h1>
<form id="avatarsform" method="post" accept-charset="UTF-8" enctype="multipart/form-data">
  <h2><label for="uid">User name:</label></h2>
  <p><input type="text" name="uid" id="uid"/></p>

  <h2><label for="uid">Password:</label></h2>
  <p><input type="password" name="password" id="password"/></p>

  <h2>Avatar</h2>
  <p>
    Requirements for avatars:
  </p>
  <ul>
    <li>No copyrighted content without agreement of the rights holder.</li>
    <li>No sexually explicit content.</li>
    <li>No insults.</li>
    <li>Dimensions: min. 120x120 px (this size is also recommended).</li>
    <li>Image has to be squared.</li>
    <li>Allowed formats: PNG, JPG, GIF, SVG.</li>
    <li>Maximum file size: 100 KiB.</li>
  </ul>
  <p><input type="file" name="avatar" id="avatar" accept="image/png,image/gif,image/jpeg,image/svg+xml,image/svg"/></p>

  <p>Alternatively, check the following box to delete your current avatar:</p>
  <p><input type="checkbox" name="delete_avatar" id="delete_avatar"/> <label for="delete_avatar">Delete my avatar</label></p>

  <p><input type="submit" value="Submit"/></p>
</form>
HTML

def authenticate(uid, password)
  email = IO.popen(["/usr/bin/python", "/usr/share/mailman3-web/manage.py", "runscript", "--traceback", "authtest", "--script-args", uid, password]) do |io|
    io.read.strip
  end
  return $?.exitstatus == 0 ? email : nil
end

def valid_avatar?(path)
  return false if File.size(path) > MAX_AVATAR_SIZE
  return false unless IO.popen(["/usr/bin/file", "-i", path]){|io| io.read.strip} =~ /: image\/(png|jpeg|gif|svg)/
  # TODO: Check dimension requirement of 120x120 or greater
  # Note: When doing this, consider the image may be an SVG
  true
end

def calc_avatar_path(email)
  # Note that the file extension has to be .jpg; anything else is not
  # permissible, because Mailman requests it exactly like
  # that. However, it is not required that the image is actually of
  # JPG format. The browser figures this out correctly.
  File.join(AVATAR_PATH, "#{Digest::MD5.hexdigest(email)}.jpg")
end

Syslog.open("avatars", Syslog::LOG_ODELAY | Syslog::LOG_PID, Syslog::LOG_FTP)
cgi = CGI.new

# GET requests the upload form, POST submits it.
if cgi.request_method == "GET"
  cgi.out("type" => "text/html", "status" => "OK", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
    content = HTML_FORM
    HTML_TEMPLATE.result(binding)
  end
else # POST request
  if cgi.has_key?("uid") && cgi.has_key?("password") # uid and password given
    Syslog.log(Syslog::LOG_INFO, "Authenticating user ID '%s' on IP %s", cgi["uid"], cgi.remote_addr)

    if email = authenticate(cgi["uid"], cgi["password"]) # Auth successful # single = intended
      Syslog.log(Syslog::LOG_INFO, "Authentication successful for user ID '%s' on IP %s", cgi["uid"], cgi.remote_addr)

      # Delete request?
      if cgi.has_key?("delete_avatar") # Delete request
        File.unlink(calc_avatar_path(email)) if File.exist?(calc_avatar_path(email))
        Syslog.log(Syslog::LOG_INFO, "Deleted avatar for user ID %s", cgi["uid"])
        cgi.out("type" => "text/html", "status" => "OK", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
          content = "<h1>Success</h1><p>Your avatar was deleted.</p>"
          HTML_TEMPLATE.result(binding)
        end
      else # Update request
        # Write avatar to disk for inspection
        file = Tempfile.open("avatarchange", :encoding => "BINARY")
        begin
          filesize = 0
          while chunk = cgi["avatar"].read(1024) # prevent filling RAM
            file.write(chunk)
            filesize += chunk.length
            break if filesize > MAX_AVATAR_SIZE # prevent filling disk
          end

          file.flush
          sleep 1

          if filesize <= MAX_AVATAR_SIZE && valid_avatar?(file.path) # Image format and size is okay
            # Copy avatar to final destination
            destination = calc_avatar_path(email)
            FileUtils.cp(file.path, destination)
            File.chmod(0644, destination)

            # Success.
            Syslog.log(Syslog::LOG_INFO, "Updated avatar for user ID %s", cgi["uid"])
            cgi.out("type" => "text/html", "status" => "OK", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
              content = "<h1>Success</h1><p>Your avatar was updated.</p>"
              HTML_TEMPLATE.result(binding)
            end
          else # Image format or size is not okay
            cgi.out("type" => "text/html", "status" => "400", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
              content = "<h1>Invalid file</h1><p>This file cannot be used as an avatar.</p>"
              HTML_TEMPLATE.result(binding)
            end
          end
        ensure
          file.unlink
        end
      end
    else # Auth failure
      Syslog.log(Syslog::LOG_ERR, "Authentication failure for user ID '%s' from IP", cgi["uid"], cgi.remote_addr)
      cgi.out("type" => "text/html", "status" => "403", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
        content = "<h1>Authentication failure</h1><p>Either user name or password are wrong.</p>"
        HTML_TEMPLATE.result(binding)
      end
    end
  else # uid or password missing
    cgi.out("type" => "text/html", "status" => "400", "connection" => "close", "charset" => "UTF-8", "expires" => Time.now) do
      content = "<h1>Incomplete</h1><p>The request was incomplete.</p>"
      HTML_TEMPLATE.result(binding)
    end
  end
end

Syslog.close
