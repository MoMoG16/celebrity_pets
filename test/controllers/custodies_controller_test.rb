require 'test_helper'

class CustodiesControllerTest < ActionController::TestCase
  setup do
    @custody = custodies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custodies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custody" do
    assert_difference('Custody.count') do
      post :create, custody: {  }
    end

    assert_redirected_to custody_path(assigns(:custody))
  end

  test "should show custody" do
    get :show, id: @custody
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custody
    assert_response :success
  end

  test "should update custody" do
    patch :update, id: @custody, custody: {  }
    assert_redirected_to custody_path(assigns(:custody))
  end

  test "should destroy custody" do
    assert_difference('Custody.count', -1) do
      delete :destroy, id: @custody
    end

    assert_redirected_to custodies_path
  end
end
