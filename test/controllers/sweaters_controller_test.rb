require 'test_helper'

class SweatersControllerTest < ActionController::TestCase
  setup do
    @sweater = sweaters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sweaters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sweater" do
    assert_difference('Sweater.count') do
      post :create, sweater: { current_size: @sweater.current_size, decrease_row: @sweater.decrease_row, full_pattern: @sweater.full_pattern, increase_row: @sweater.increase_row, pattern_repeat: @sweater.pattern_repeat }
    end

    assert_redirected_to sweater_path(assigns(:sweater))
  end

  test "should show sweater" do
    get :show, id: @sweater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sweater
    assert_response :success
  end

  test "should update sweater" do
    patch :update, id: @sweater, sweater: { current_size: @sweater.current_size, decrease_row: @sweater.decrease_row, full_pattern: @sweater.full_pattern, increase_row: @sweater.increase_row, pattern_repeat: @sweater.pattern_repeat }
    assert_redirected_to sweater_path(assigns(:sweater))
  end

  test "should destroy sweater" do
    assert_difference('Sweater.count', -1) do
      delete :destroy, id: @sweater
    end

    assert_redirected_to sweaters_path
  end
end
