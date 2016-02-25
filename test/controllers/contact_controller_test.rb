require 'test_helper'

class ContactControllerTest < ActionController::TestCase
  test "should get get_in_touch" do
    get :get_in_touch
    assert_response :success
  end

end
