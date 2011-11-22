$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "per-version/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "per-version"
  s.version     = PerVersion::VERSION
  s.authors     = ["Bodacious"]
  s.email       = ["gavin@gavinmorrice.com"]
  s.homepage    = "https://github.com/Bodacious/per-version"
  s.summary     = "Simple rake tasks for managing git version tags"
  s.description = "Simple rake tasks for managing app version with git version tags."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "=> 3.1.1"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "sqlite3"
end
