require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
  	get root_path
  	assert_template 'static_pages/home'
  	assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", login_path, count: 2
    assert_select "a span i[class=glyphicon]", count: 0 # don't show menu toggle unless logged in
    get login_path
    assert_select "title", full_title("Log in")
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", login_path, count: 1
    assert_select "a span i[class=glyphicon]", count: 0
    assert_select "form input[type=submit][value='Log in']"
    log_in_as(users(:alice))
    assert_response :success
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", login_path, count: 1
    assert_select "a[href=?]", logout_path, count: 0
    assert_select "a span i[class=glyphicon]", count: 0
	end

end
