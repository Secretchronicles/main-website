# -*- ruby -*-

desc "Compile the site."
task :compile do
  sh "bundle exec nanoc compile"
end

desc "Write it out to secretchronicles.de."
task :deploy => :compile do
  sh "rsync -hrE --progress output/ quintus@alexandria.secretchronicles.de:/srv/http/mainsite/"
end
