require "action_view_preview/version"
require "action_view_preview/engine"

module ActionViewPreview
  class Preview
    extend ActiveSupport::DescendantsTracker

    class << self
      # Returns all preview classes
      def all
        load_previews if descendants.empty?
        descendants
      end

      # Returns all of the available views
      def views
        public_instance_methods(false).map(&:to_s).sort
      end

      # Returns the underscored name of the mailer preview without the suffix
      def preview_name
        name.delete_suffix("Preview").underscore
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