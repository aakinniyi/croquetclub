require 'test_helper'

class LawngroundsControllerTest < ActionController::TestCase
  setup do
    @lawnground = lawngrounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lawngrounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lawnground" do
    assert_difference('Lawnground.count') do
      post :create, lawnground: { name: @lawnground.name }
    end

    assert_redirected_to lawnground_path(assigns(:lawnground))
  end

  test "should show lawnground" do
    get :show, id: @lawnground
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lawnground
    assert_response :success
  end

  test "should update lawnground" do
    patch :update, id: @lawnground, lawnground: { name: @lawnground.name }
    assert_redirected_to lawnground_path(assigns(:lawnground))
  end

  test "should destroy lawnground" do
    assert_difference('Lawnground.count', -1) do
      delete :destroy, id: @lawnground
    end

    assert_redirected_to lawngrounds_path
  end
end
