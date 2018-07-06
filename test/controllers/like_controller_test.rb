require 'test_helper'

class LikeControllerTest < ActionController::TestCase
  test "should get likepost" do
    get :likepost
    assert_response :success
  end

end
