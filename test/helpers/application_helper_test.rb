require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "GLBRC Demo App"
    assert_equal full_title("Login"), "Login | GLBRC Demo App"
  end
end
