require "action_view_preview/version"
require "action_view_preview/engine"
require "active_support"

module ActionViewPreview
  extend ::ActiveSupport::Autoload
  
  autoload :Preview

end

require "action_view_preview/railtie" if defined?(Rails::Railtie)