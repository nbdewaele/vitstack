require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do

		# This commented test may be needed later
    # assert_equal full_title,         FILL_IN - find what to fill in and uncomment


    assert_equal full_title("Help"), "Help | BRBBaby"
		assert_equal full_title("Contact"), "Contact | BRBBaby"
		assert_equal full_title("Sign up"), "Sign up | BRBBaby"
  end



end
