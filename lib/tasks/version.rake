namespace :version do
  
  desc "Release a new version"
  task :release => [:environment, :load_version] do |branch, source|
    branch ||= :origin
    source ||= :master
    system "git tag -a v#{VERSION} -m 'Released version #{VERSION}'"
    system "git push --tags"
  end

  desc "Show the current version"
  task :show => [:environment, :load_version] do
    system("echo Current Version: #{VERSION}")
  end
  
  private
  
  task :load_version do
    load("#{Rails.root}/VERSION")
  end
  
end

