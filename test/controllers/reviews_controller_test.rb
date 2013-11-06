require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  test "should get post:text" do
    get :post:text
    assert_response :success
  end

end
