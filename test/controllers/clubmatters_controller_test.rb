require 'test_helper'

class ClubmattersControllerTest < ActionController::TestCase
  test "should get club_matters" do
    get :club_matters
    assert_response :success
  end

end
