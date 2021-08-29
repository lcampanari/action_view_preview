require "action_view_preview/version"
require "action_view_preview/engine"

module ActionViewPreview
  extend ::ActiveSupport::Autoload
  
  autoload :Base

  mattr_accessor :preview_path

  def self.setup
    yield self
  end

  def self.preview_path
    @@preview_path || "#{Rails.root}/test/views/previews"
  end
 
end
