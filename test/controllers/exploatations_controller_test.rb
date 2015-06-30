require 'test_helper'

class ExploatationsControllerTest < ActionController::TestCase
  setup do
    @exploatation = exploatations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exploatations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exploatation" do
    assert_difference('Exploatation.count') do
      post :create, exploatation: { barcode: @exploatation.barcode, description: @exploatation.description, location: @exploatation.location, name: @exploatation.name, quantity: @exploatation.quantity }
    end

    assert_redirected_to exploatation_path(assigns(:exploatation))
  end

  test "should show exploatation" do
    get :show, id: @exploatation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exploatation
    assert_response :success
  end

  test "should update exploatation" do
    patch :update, id: @exploatation, exploatation: { barcode: @exploatation.barcode, description: @exploatation.description, location: @exploatation.location, name: @exploatation.name, quantity: @exploatation.quantity }
    assert_redirected_to exploatation_path(assigns(:exploatation))
  end

  test "should destroy exploatation" do
    assert_difference('Exploatation.count', -1) do
      delete :destroy, id: @exploatation
    end

    assert_redirected_to exploatations_path
  end
end
