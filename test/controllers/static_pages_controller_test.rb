require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	# test "should get root" do
  #   get root_path
  #   assert_response :success
  # end

  test "should get home" do
    get root_path
    assert_response :success
		assert_select "title", "BRBBaby"
  end

  test "should get help" do
    get help_path
    assert_response :success
		assert_select "title", "BRBBaby"
  end

  test "should get about" do
    get about_path
    assert_response :success
		assert_select "title", "BRBBaby"
  end

	test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | BRBBaby"
  end

	# MAY NEED TO REMOVE OLD LOGINS FROM STATIC PAGES CONTROLLER< ROUTES AND VIEWS
	# test "should get login" do
  #   get login_path
  #   assert_response :success
	# 	assert_select "title", "BRBBaby"
  # end
end
