require "test_helper"

class ActionViewPreviewTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert ActionViewPreview::VERSION
  end

  test 'setup block yields self' do
    ActionViewPreview.setup do |config|
      assert_equal ActionViewPreview, config
    end
  end

  test 'model options can be configured through ActionViewPreview' do
    new_options = {
      preview_path: '/'
    }

    new_options.each do |option, value|
      refute_equal ActionViewPreview.send(option), value
    end

    swap ActionViewPreview, new_options do 
      new_options.each do |option, value|
        assert_equal ActionViewPreview.send(option), value
      end
    end
  end
end
