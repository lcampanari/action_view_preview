require "rails/generators"

module ActionViewPreview
  class InstallGenerator < Rails::Generators::Base
    desc 'Mounts the action view preview module in routes'

    def mount_engine
      route 'mount ActionViewPreview::Engine => "/action_view_preview"'
    end

    def execute
      generate 'action_view_preview Hello hello_world'
    end
  end
end
