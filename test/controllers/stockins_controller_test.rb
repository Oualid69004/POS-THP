require 'test_helper'

class StockinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockin = stockins(:one)
  end

  test "should get index" do
    get stockins_url
    assert_response :success
  end

  test "should get new" do
    get new_stockin_url
    assert_response :success
  end

  test "should create stockin" do
    assert_difference('Stockin.count') do
      post stockins_url, params: { stockin: { total: @stockin.total } }
    end

    assert_redirected_to stockin_url(Stockin.last)
  end

  test "should show stockin" do
    get stockin_url(@stockin)
    assert_response :success
  end

  test "should get edit" do
    get edit_stockin_url(@stockin)
    assert_response :success
  end

  test "should update stockin" do
    patch stockin_url(@stockin), params: { stockin: { total: @stockin.total } }
    assert_redirected_to stockin_url(@stockin)
  end

  test "should destroy stockin" do
    assert_difference('Stockin.count', -1) do
      delete stockin_url(@stockin)
    end

    assert_redirected_to stockins_url
  end
end
