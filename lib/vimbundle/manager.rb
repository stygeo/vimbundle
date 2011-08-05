# Base class
module VimBundle
  class Manager
    attr_accessor :config
    
    def initialize
      @config = VimBundle::Configuration.new
      @plugin_loader = VimBundle::PluginLoader.new @config
    end

    def install_or_update_plugins
    end

    def log str
    end
  end
end
