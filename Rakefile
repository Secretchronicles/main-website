# -*- ruby -*-

desc "Compile the site."
task :compile do
  sh "bundle exec nanoc compile"
end

desc "View the site at localhost:3000."
task :view do
  sh "bundle exec nanoc view"
end

desc "Write it out to secretchronicles.org."
task :deploy => :compile do
  sh "rsync -hrE --progress output/ quintus@alexandria.secretchronicles.org:/srv/http/mainsite/"
end
