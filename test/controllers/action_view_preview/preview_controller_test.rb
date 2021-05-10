require "test_helper"

module ActionViewPreview
  class PreviewControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get preview_index_path
      assert_response :success
    end

    test "should get show" do
      get preview_show_path('testing_view/test_one')
      assert_response :success
    end
  end
end
