require 'test_helper'

class ConstructorsControllerTest < ActionController::TestCase
  setup do
    @constructor = constructors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:constructors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create constructor" do
    assert_difference('Constructor.count') do
      post :create, constructor: {  }
    end

    assert_redirected_to constructor_path(assigns(:constructor))
  end

  test "should show constructor" do
    get :show, id: @constructor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @constructor
    assert_response :success
  end

  test "should update constructor" do
    patch :update, id: @constructor, constructor: {  }
    assert_redirected_to constructor_path(assigns(:constructor))
  end

  test "should destroy constructor" do
    assert_difference('Constructor.count', -1) do
      delete :destroy, id: @constructor
    end

    assert_redirected_to constructors_path
  end
end
