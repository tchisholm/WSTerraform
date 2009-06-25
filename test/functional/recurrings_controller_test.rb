require 'test_helper'

class RecurringsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recurrings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recurring" do
    assert_difference('Recurring.count') do
      post :create, :recurring => { }
    end

    assert_redirected_to recurring_path(assigns(:recurring))
  end

  test "should show recurring" do
    get :show, :id => recurrings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => recurrings(:one).to_param
    assert_response :success
  end

  test "should update recurring" do
    put :update, :id => recurrings(:one).to_param, :recurring => { }
    assert_redirected_to recurring_path(assigns(:recurring))
  end

  test "should destroy recurring" do
    assert_difference('Recurring.count', -1) do
      delete :destroy, :id => recurrings(:one).to_param
    end

    assert_redirected_to recurrings_path
  end
end
