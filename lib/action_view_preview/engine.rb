# frozen_string_literal: true

require "rails"

module ActionViewPreview
  class Engine < ::Rails::Engine
    isolate_namespace ActionViewPreview

    config.action_view_preview = ActionViewPreview
    config.eager_load_namespaces << ActionViewPreview

    initializer "action_view_preview.set_configs" do |app|
      options = app.config.action_view_preview

      options.preview_path ||= defined?(Rails.root) ? "#{Rails.root}/test/views/previews" : nil
      
      ActiveSupport.on_load(:action_view_preview) do
        options.each { |k, v| ActionViewPreview.send("#{k}=", v) }
      end
    end

    initializer "action_view_preview.set_autoload_paths" do |app|
      options = app.config.action_view_preview

      if options.preview_path
        ActiveSupport::Dependencies.autoload_paths << options.preview_path
      end
    end
  end
end

require 'action_view_preview' if !defined?(ActionViewPreview::Base)