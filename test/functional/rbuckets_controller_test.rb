require 'test_helper'

class RbucketsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rbuckets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rbucket" do
    assert_difference('Rbucket.count') do
      post :create, :rbucket => { }
    end

    assert_redirected_to rbucket_path(assigns(:rbucket))
  end

  test "should show rbucket" do
    get :show, :id => rbuckets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rbuckets(:one).to_param
    assert_response :success
  end

  test "should update rbucket" do
    put :update, :id => rbuckets(:one).to_param, :rbucket => { }
    assert_redirected_to rbucket_path(assigns(:rbucket))
  end

  test "should destroy rbucket" do
    assert_difference('Rbucket.count', -1) do
      delete :destroy, :id => rbuckets(:one).to_param
    end

    assert_redirected_to rbuckets_path
  end
end
