require "test_helper"

class UserChallengesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_challenges_new_url
    assert_response :success
  end

  test "should get create" do
    get user_challenges_create_url
    assert_response :success
  end
end
