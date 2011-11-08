require 'test_helper'

class LicencesControllerTest < ActionController::TestCase
  setup do
    @licence = licences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:licences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create licence" do
    assert_difference('Licence.count') do
      post :create, :licence => @licence.attributes
    end

    assert_redirected_to licence_path(assigns(:licence))
  end

  test "should show licence" do
    get :show, :id => @licence.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @licence.to_param
    assert_response :success
  end

  test "should update licence" do
    put :update, :id => @licence.to_param, :licence => @licence.attributes
    assert_redirected_to licence_path(assigns(:licence))
  end

  test "should destroy licence" do
    assert_difference('Licence.count', -1) do
      delete :destroy, :id => @licence.to_param
    end

    assert_redirected_to licences_path
  end
end
