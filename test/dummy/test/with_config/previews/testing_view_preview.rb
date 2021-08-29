class TestingViewPreview < ActionViewPreview::Base
  def test_one
    '<b>Hello from test_one with config</b>'
  end

  def test_two
    '<b>Hello from test_two with config</b>'
  end
end