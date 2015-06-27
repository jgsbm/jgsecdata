require 'test_helper'

class CreditcardsControllerTest < ActionController::TestCase
  setup do
    @creditcard = creditcards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creditcards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create creditcard" do
    assert_difference('Creditcard.count') do
      post :create, creditcard: { creditno: @creditcard.creditno, customer_id: @creditcard.customer_id, version: @creditcard.version }
    end

    assert_redirected_to creditcard_path(assigns(:creditcard))
  end

  test "should show creditcard" do
    get :show, id: @creditcard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @creditcard
    assert_response :success
  end

  test "should update creditcard" do
    patch :update, id: @creditcard, creditcard: { creditno: @creditcard.creditno, customer_id: @creditcard.customer_id, version: @creditcard.version }
    assert_redirected_to creditcard_path(assigns(:creditcard))
  end

  test "should destroy creditcard" do
    assert_difference('Creditcard.count', -1) do
      delete :destroy, id: @creditcard
    end

    assert_redirected_to creditcards_path
  end
end
