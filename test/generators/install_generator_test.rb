require "rails/generators"
require 'generators/action_view_preview/install_generator'
require_relative '../test_helper/generator_helper'

class InstallGeneratorTest < Rails::Generators::TestCase
  include TestHelper::GeneratorHelper

  tests ::ActionViewPreview::InstallGenerator
  destination File.expand_path("../tmp", __dir__)
  
  setup do 
    prepare_destination
    build_app
  end

  test "template file is created" do
    Dir.chdir(app_path) do
      run_generator
      assert_file "test/views/previews/hello_preview.rb"
    end
  end
end
