require 'test_helper'

class HelppagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:helppages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create helppage" do
    assert_difference('Helppage.count') do
      post :create, :helppage => { }
    end

    assert_redirected_to helppage_path(assigns(:helppage))
  end

  test "should show helppage" do
    get :show, :id => helppages(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => helppages(:one).to_param
    assert_response :success
  end

  test "should update helppage" do
    put :update, :id => helppages(:one).to_param, :helppage => { }
    assert_redirected_to helppage_path(assigns(:helppage))
  end

  test "should destroy helppage" do
    assert_difference('Helppage.count', -1) do
      delete :destroy, :id => helppages(:one).to_param
    end

    assert_redirected_to helppages_path
  end
end
