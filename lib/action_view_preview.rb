require "action_view_preview/version"
require "action_view_preview/engine"

module ActionViewPreview
  class Preview
    extend ActiveSupport::DescendantsTracker

    attr_reader :params

    def initialize(params = {})
      @params = params
    end

    class << self

      def call(view_action, params = {})
        preview = new(params)
        preview.public_send(view_action)
      end

      # Returns all preview classes
      def all
        load_previews if descendants.empty?
        descendants
      end

      # Returns all of the available views
      def views
        public_instance_methods(false).map(&:to_s).sort
      end

      # Returns +true+ if the view exists.
      def view_exists?(view)
        views.include?(view)
      end

      # Returns the underscored name of the mailer preview without the suffix
      def preview_name
        name.delete_suffix("Preview").underscore
      end

       # Find a preview by its underscored class name
       def find(preview)
        all.find { |p| p.preview_name == preview }
      end

      # Returns +true+ if the preview exists
      def exists?(preview)
        all.any? { |p| p.preview_name == preview }
      end

      private

      def load_previews
        if preview_path
          Dir["#{preview_path}/**/*_preview.rb"].sort.each { |file| require_dependency file }
        end
      end

      def preview_path
        # Base.preview_path
        "#{Rails.root}/test/views/previews"
      end
    end
  end

end