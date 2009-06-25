require 'test_helper'

class TbucketsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbuckets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbucket" do
    assert_difference('Tbucket.count') do
      post :create, :tbucket => { }
    end

    assert_redirected_to tbucket_path(assigns(:tbucket))
  end

  test "should show tbucket" do
    get :show, :id => tbuckets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tbuckets(:one).to_param
    assert_response :success
  end

  test "should update tbucket" do
    put :update, :id => tbuckets(:one).to_param, :tbucket => { }
    assert_redirected_to tbucket_path(assigns(:tbucket))
  end

  test "should destroy tbucket" do
    assert_difference('Tbucket.count', -1) do
      delete :destroy, :id => tbuckets(:one).to_param
    end

    assert_redirected_to tbuckets_path
  end
end
