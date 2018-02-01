require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
  	@user = User.new(login: "exampleUser", password: "foobar")
  end

  ##Tests for user signup
  # test "should be valid" do
  # 	assert @user.valid?
  # end
  #
  # test "login should be present" do
  # 	@user.login = ""
  # 	assert_not @user.valid?
  # end
  #
  # test "login should not be too long" do
  # 	@user.name = "a" * 51
  # 	assert_not @user.valid?
  # end
  #
	# test "logins should be unique" do
	# 	duplicate_user = @user.dup
	# 	duplicate_user.login = @user.login
	# 	@user.save
	# 	assert_not duplicate_user.valid?
	# end
  #
	# test "logins should be saved as lower-case" do
	# 	mixed_case_login = "mIxEDcaSEuSer"
	# 	@user.login = mixed_case_login
	# 	@user.save
	# 	assert_equal mixed_case_login.downcase, @user.reload.login
	# end
  #
	# test "password should be present (nonblank)" do
	# 	@user.password = " " * 6
	# 	assert_not @user.valid?
	# end
  #
	# test "password should have a minimum length" do
	# 	@user.password = "a" * 5
	# 	assert_not @user.valid?
	# end

end
