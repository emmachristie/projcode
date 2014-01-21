require 'test_helper'

class SportInstancesControllerTest < ActionController::TestCase
  setup do
    @sport_instance = sport_instances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sport_instances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sport_instance" do
    assert_difference('SportInstance.count') do
      post :create, sport_instance: {  }
    end

    assert_redirected_to sport_instance_path(assigns(:sport_instance))
  end

  test "should show sport_instance" do
    get :show, id: @sport_instance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sport_instance
    assert_response :success
  end

  test "should update sport_instance" do
    patch :update, id: @sport_instance, sport_instance: {  }
    assert_redirected_to sport_instance_path(assigns(:sport_instance))
  end

  test "should destroy sport_instance" do
    assert_difference('SportInstance.count', -1) do
      delete :destroy, id: @sport_instance
    end

    assert_redirected_to sport_instances_path
  end
end
