# frozen_string_literal: true

require './lib/generators/action_view_preview/action_view_preview_generator.rb'

class ActionViewPreviewGeneratorTest < Rails::Generators::TestCase
  tests ActionViewPreviewGenerator
  destination File.expand_path('../../tmp', __FILE__)
  setup :prepare_destination

  test 'creates singular named preview file with given instance methods' do
    run_generator %w[hello first second third]
    assert_file 'test/views/previews/hello_preview.rb' do |preview_method|
      assert_instance_method :first, preview_method
      assert_instance_method :second, preview_method
      assert_instance_method :third, preview_method
    end
  end
end
