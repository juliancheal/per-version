class VersionFileGenerator < Rails::Generators::Base
  
  source_root File.expand_path("../templates", __FILE__)
  
  def create_version_file
    copy_file "VERSION", "VERSION"
  end

end
