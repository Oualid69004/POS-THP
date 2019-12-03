require 'test_helper'

class PaymentsuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paymentsupplier = paymentsuppliers(:one)
  end

  test "should get index" do
    get paymentsuppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_paymentsupplier_url
    assert_response :success
  end

  test "should create paymentsupplier" do
    assert_difference('Paymentsupplier.count') do
      post paymentsuppliers_url, params: { paymentsupplier: { paymentNote: @paymentsupplier.paymentNote, paymentValue: @paymentsupplier.paymentValue } }
    end

    assert_redirected_to paymentsupplier_url(Paymentsupplier.last)
  end

  test "should show paymentsupplier" do
    get paymentsupplier_url(@paymentsupplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_paymentsupplier_url(@paymentsupplier)
    assert_response :success
  end

  test "should update paymentsupplier" do
    patch paymentsupplier_url(@paymentsupplier), params: { paymentsupplier: { paymentNote: @paymentsupplier.paymentNote, paymentValue: @paymentsupplier.paymentValue } }
    assert_redirected_to paymentsupplier_url(@paymentsupplier)
  end

  test "should destroy paymentsupplier" do
    assert_difference('Paymentsupplier.count', -1) do
      delete paymentsupplier_url(@paymentsupplier)
    end

    assert_redirected_to paymentsuppliers_url
  end
end
