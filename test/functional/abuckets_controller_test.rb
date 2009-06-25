require 'test_helper'

class AbucketsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abuckets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abucket" do
    assert_difference('Abucket.count') do
      post :create, :abucket => { }
    end

    assert_redirected_to abucket_path(assigns(:abucket))
  end

  test "should show abucket" do
    get :show, :id => abuckets(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => abuckets(:one).to_param
    assert_response :success
  end

  test "should update abucket" do
    put :update, :id => abuckets(:one).to_param, :abucket => { }
    assert_redirected_to abucket_path(assigns(:abucket))
  end

  test "should destroy abucket" do
    assert_difference('Abucket.count', -1) do
      delete :destroy, :id => abuckets(:one).to_param
    end

    assert_redirected_to abuckets_path
  end
end
