ssh_user = "user@domain.com" # for rsync deployment
remote_root = "~/path/to/remote/" # for rsync deployment

desc "Runs preview"
task :preview do
  system "staticmatic preview ."
end

desc "Builds the site"
task :build  do
  puts "*** Building the site ***"
  system "staticmatic build ."
end

desc "Clears and generates new styles, builds and deploys"
task :deploy => :build do
  puts "*** Deploying the site ***"
  system("rsync -avz --delete site/ #{ssh_user}:#{remote_root}")
end