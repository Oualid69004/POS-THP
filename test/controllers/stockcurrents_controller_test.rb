require 'test_helper'

class StockcurrentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stockcurrent = stockcurrents(:one)
  end

  test "should get index" do
    get stockcurrents_url
    assert_response :success
  end

  test "should get new" do
    get new_stockcurrent_url
    assert_response :success
  end

  test "should create stockcurrent" do
    assert_difference('Stockcurrent.count') do
      post stockcurrents_url, params: { stockcurrent: { cost: @stockcurrent.cost, idstockcurrent: @stockcurrent.idstockcurrent, total: @stockcurrent.total, units: @stockcurrent.units } }
    end

    assert_redirected_to stockcurrent_url(Stockcurrent.last)
  end

  test "should show stockcurrent" do
    get stockcurrent_url(@stockcurrent)
    assert_response :success
  end

  test "should get edit" do
    get edit_stockcurrent_url(@stockcurrent)
    assert_response :success
  end

  test "should update stockcurrent" do
    patch stockcurrent_url(@stockcurrent), params: { stockcurrent: { cost: @stockcurrent.cost, idstockcurrent: @stockcurrent.idstockcurrent, total: @stockcurrent.total, units: @stockcurrent.units } }
    assert_redirected_to stockcurrent_url(@stockcurrent)
  end

  test "should destroy stockcurrent" do
    assert_difference('Stockcurrent.count', -1) do
      delete stockcurrent_url(@stockcurrent)
    end

    assert_redirected_to stockcurrents_url
  end
end
