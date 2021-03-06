require 'test_helper'

class FasesControllerTest < ActionController::TestCase
  setup do
    @fase = fases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fase" do
    assert_difference('Fase.count') do
      post :create, :fase => @fase.attributes
    end

    assert_redirected_to fase_path(assigns(:fase))
  end

  test "should show fase" do
    get :show, :id => @fase.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @fase.to_param
    assert_response :success
  end

  test "should update fase" do
    put :update, :id => @fase.to_param, :fase => @fase.attributes
    assert_redirected_to fase_path(assigns(:fase))
  end

  test "should destroy fase" do
    assert_difference('Fase.count', -1) do
      delete :destroy, :id => @fase.to_param
    end

    assert_redirected_to fases_path
  end
end
