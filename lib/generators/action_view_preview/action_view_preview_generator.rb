# frozen_string_literal: true

require 'rails/generators'

class ActionViewPreviewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  argument :name, type: :string, required: true, banner: 'NAME'
  argument :actions, type: :array, default: [], banner: 'action action'

  def execute
    actions.map!(&:underscore)

    template 'test/views/previews/%file_name%_preview.rb', "#{ActionViewPreview.preview_path}/%file_name%_preview.rb"
  end
end
