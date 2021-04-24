require_dependency "action_view_preview/application_controller"

module ActionViewPreview
  class PreviewController < ApplicationController
    def index
      @previews = ActionViewPreview::Preview.all
      @page_title = "View Previews"
    end

    def show
    end
  end
end
