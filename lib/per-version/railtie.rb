module PerVersion
  class Railtie < Rails::Railtie
    railtie_name :per_version

    rake_tasks do
      load "tasks/version.rake"
    end
  end
end