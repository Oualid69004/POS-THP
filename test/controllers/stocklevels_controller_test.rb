require 'test_helper'

class StocklevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stocklevel = stocklevels(:one)
  end

  test "should get index" do
    get stocklevels_url
    assert_response :success
  end

  test "should get new" do
    get new_stocklevel_url
    assert_response :success
  end

  test "should create stocklevel" do
    assert_difference('Stocklevel.count') do
      post stocklevels_url, params: { stocklevel: { location: @stocklevel.location, stockmaximum: @stocklevel.stockmaximum, stocksecurity: @stocklevel.stocksecurity } }
    end

    assert_redirected_to stocklevel_url(Stocklevel.last)
  end

  test "should show stocklevel" do
    get stocklevel_url(@stocklevel)
    assert_response :success
  end

  test "should get edit" do
    get edit_stocklevel_url(@stocklevel)
    assert_response :success
  end

  test "should update stocklevel" do
    patch stocklevel_url(@stocklevel), params: { stocklevel: { location: @stocklevel.location, stockmaximum: @stocklevel.stockmaximum, stocksecurity: @stocklevel.stocksecurity } }
    assert_redirected_to stocklevel_url(@stocklevel)
  end

  test "should destroy stocklevel" do
    assert_difference('Stocklevel.count', -1) do
      delete stocklevel_url(@stocklevel)
    end

    assert_redirected_to stocklevels_url
  end
end
