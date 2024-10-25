require "test_helper"

class GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get game1" do
    get games_game1_url
    assert_response :success
  end

  test "should get game2" do
    get games_game2_url
    assert_response :success
  end

  test "should get game3" do
    get games_game3_url
    assert_response :success
  end
end
