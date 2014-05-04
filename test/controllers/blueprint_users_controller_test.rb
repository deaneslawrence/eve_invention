require 'test_helper'

class BlueprintUsersControllerTest < ActionController::TestCase
  setup do
    @blueprint_user = blueprint_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blueprint_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blueprint_user" do
    assert_difference('BlueprintUser.count') do
      post :create, blueprint_user: {  }
    end

    assert_redirected_to blueprint_user_path(assigns(:blueprint_user))
  end

  test "should show blueprint_user" do
    get :show, id: @blueprint_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blueprint_user
    assert_response :success
  end

  test "should update blueprint_user" do
    patch :update, id: @blueprint_user, blueprint_user: {  }
    assert_redirected_to blueprint_user_path(assigns(:blueprint_user))
  end

  test "should destroy blueprint_user" do
    assert_difference('BlueprintUser.count', -1) do
      delete :destroy, id: @blueprint_user
    end

    assert_redirected_to blueprint_users_path
  end
end
