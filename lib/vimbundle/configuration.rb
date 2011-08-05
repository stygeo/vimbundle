module VimBundle
  class Configuration
    attr_accessor :file

    def initialize
      @user_path = "~/.vim"
      @file = nil
    end

    # Get the path to the user vim directory and make sure it exists
    def path
      if !Dir.exist? @user_path
        Dir.mkdir @user_path
      end

      @user_path
    end

    # Return the configuration file.
    def file
      # Do not reopen if it's already open
      if @file.nil?
        file_name = "#{@user_path}/vimbundle"

        # Check if the file exist. If it doesn't the user probably hasn't initialized
        if File.exist? file_name
          @file = File.open @user_path
        else
          # Raise error.
          # TODO: Log and exit instead of raising.
          raise Exception, "You not appear to have a vimbundle file in ~/.vim. Please run `vimbundle init`"
        end
      end

      @file
    end

    # Reload the configuration file.
    def reload
      @file = nil

      self.file
    end
  end
end
