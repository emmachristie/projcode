require 'test_helper'

class DummyUsersControllerTest < ActionController::TestCase
  setup do
    @dummy_user = dummy_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dummy_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dummy_user" do
    assert_difference('DummyUser.count') do
      post :create, dummy_user: { email: @dummy_user.email, name: @dummy_user.name }
    end

    assert_redirected_to dummy_user_path(assigns(:dummy_user))
  end

  test "should show dummy_user" do
    get :show, id: @dummy_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dummy_user
    assert_response :success
  end

  test "should update dummy_user" do
    patch :update, id: @dummy_user, dummy_user: { email: @dummy_user.email, name: @dummy_user.name }
    assert_redirected_to dummy_user_path(assigns(:dummy_user))
  end

  test "should destroy dummy_user" do
    assert_difference('DummyUser.count', -1) do
      delete :destroy, id: @dummy_user
    end

    assert_redirected_to dummy_users_path
  end
end
