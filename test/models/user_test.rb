require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name
  end

  test "full_name should not crash if user's first name is nil" do
    user = User.new(last_name: "lennon")
    assert_equal "Lennon", user.full_name
  end
end
