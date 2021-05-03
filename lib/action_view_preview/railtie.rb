# frozen_string_literal: true

require "active_job/railtie"
require "rails"
require "abstract_controller/railties/routes_helpers"

module ActionViewPreview
  class Railtie < Rails::Railtie
    config.after_initialize do |app|
      app.routes.prepend do
        get "/rails/viewer"       => "action_view_preview/preview#index", internal: true
        get "/rails/viewer/*path" => "action_view_preview/preview#show", internal: true
      end
    end
  end
end
