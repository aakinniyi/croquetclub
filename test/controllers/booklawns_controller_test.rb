require 'test_helper'

class BooklawnsControllerTest < ActionController::TestCase
  setup do
    @booklawn = booklawns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booklawns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booklawn" do
    assert_difference('Booklawn.count') do
      post :create, booklawn: { availability: @booklawn.availability, endtime: @booklawn.endtime, lawnname: @booklawn.lawnname, starttime: @booklawn.starttime }
    end

    assert_redirected_to booklawn_path(assigns(:booklawn))
  end

  test "should show booklawn" do
    get :show, id: @booklawn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booklawn
    assert_response :success
  end

  test "should update booklawn" do
    patch :update, id: @booklawn, booklawn: { availability: @booklawn.availability, endtime: @booklawn.endtime, lawnname: @booklawn.lawnname, starttime: @booklawn.starttime }
    assert_redirected_to booklawn_path(assigns(:booklawn))
  end

  test "should destroy booklawn" do
    assert_difference('Booklawn.count', -1) do
      delete :destroy, id: @booklawn
    end

    assert_redirected_to booklawns_path
  end
end
