require "action_view_preview/version"
require "active_support/dependencies/autoload"

module ActionViewPreview
  extend ::ActiveSupport::Autoload
  
  autoload :Base

  mattr_accessor :preview_path, instance_writer: false

  def self.setup
    yield self
  end
end

require "action_view_preview/engine" if defined?(Rails::Engine)