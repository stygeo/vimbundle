class InitGenerator < Thor::Group
  include Thor::Actions

  class_options :reinstall, :default => false

  def create_config_file
  end

  def install_pathogen
  end

  private
  def check_existing_files
  end
end

