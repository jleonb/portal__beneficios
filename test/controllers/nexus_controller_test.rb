require 'test_helper'

class NexusControllerTest < ActionController::TestCase
  setup do
    @nexu = nexus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nexus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nexu" do
    assert_difference('Nexu.count') do
      post :create, nexu: { agreement_contract: @nexu.agreement_contract, number: @nexu.number, user_contract: @nexu.user_contract }
    end

    assert_redirected_to nexu_path(assigns(:nexu))
  end

  test "should show nexu" do
    get :show, id: @nexu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nexu
    assert_response :success
  end

  test "should update nexu" do
    patch :update, id: @nexu, nexu: { agreement_contract: @nexu.agreement_contract, number: @nexu.number, user_contract: @nexu.user_contract }
    assert_redirected_to nexu_path(assigns(:nexu))
  end

  test "should destroy nexu" do
    assert_difference('Nexu.count', -1) do
      delete :destroy, id: @nexu
    end

    assert_redirected_to nexus_path
  end
end
