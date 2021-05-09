require_dependency "action_view_preview/application_controller"

module ActionViewPreview
  class PreviewController < ApplicationController
    before_action :find_preview, only: :show

    def index
      @previews = ActionViewPreview::Preview.all
      @page_title = "View Previews"
    end

    def show
      preview
    end

    
    private

    def preview
      if params[:path] == @preview.preview_name
        @page_title = "View Previews for #{@preview.preview_name}"
        render action: "view"
      else
        @view_action = File.basename(params[:path])
  
        if @preview.view_exists?(@view_action)
          @page_title = "View Preview for #{@preview.preview_name}##{@view_action}"
          @view = @preview.call(@view_action, params)
          render action: "show", layout: false, formats: [:html]
        else
          # raise AbstractController::ActionNotFound, "View '#{@view_action}' not found in #{@preview.name}"
          raise "View '#{@view_action}' not found in #{@preview.name}"
        end
      end
    end

    def find_preview
      candidates = []
      params[:path].to_s.scan(%r{/|$}) { candidates << $` }
      preview = candidates.detect { |candidate| ActionViewPreview::Preview.exists?(candidate) }

      if preview
        @preview = ActionViewPreview::Preview.find(preview)
      else
        # raise AbstractController::ActionNotFound, "View preview '#{params[:path]}' not found"
        raise "View preview '#{params[:path]}' not found"
      end
    end
  end
end
