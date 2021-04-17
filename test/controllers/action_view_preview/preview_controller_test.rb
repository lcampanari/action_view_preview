require "test_helper"

module ActionViewPreview
  class PreviewControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get preview_index_url
      assert_response :success
    end

    test "should get show" do
      get preview_show_url
      assert_response :success
    end
  end
end
