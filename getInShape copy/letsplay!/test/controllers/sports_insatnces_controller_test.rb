require 'test_helper'

class SportsInsatncesControllerTest < ActionController::TestCase
  setup do
    @sports_insatnce = sports_insatnces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sports_insatnces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sports_insatnce" do
    assert_difference('SportsInsatnce.count') do
      post :create, sports_insatnce: {  }
    end

    assert_redirected_to sports_insatnce_path(assigns(:sports_insatnce))
  end

  test "should show sports_insatnce" do
    get :show, id: @sports_insatnce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sports_insatnce
    assert_response :success
  end

  test "should update sports_insatnce" do
    patch :update, id: @sports_insatnce, sports_insatnce: {  }
    assert_redirected_to sports_insatnce_path(assigns(:sports_insatnce))
  end

  test "should destroy sports_insatnce" do
    assert_difference('SportsInsatnce.count', -1) do
      delete :destroy, id: @sports_insatnce
    end

    assert_redirected_to sports_insatnces_path
  end
end
