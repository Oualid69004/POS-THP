require 'test_helper'

class BusinesslinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @businessline = businesslines(:one)
  end

  test "should get index" do
    get businesslines_url
    assert_response :success
  end

  test "should get new" do
    get new_businessline_url
    assert_response :success
  end

  test "should create businessline" do
    assert_difference('Businessline.count') do
      post businesslines_url, params: { businessline: { description: @businessline.description, name: @businessline.name } }
    end

    assert_redirected_to businessline_url(Businessline.last)
  end

  test "should show businessline" do
    get businessline_url(@businessline)
    assert_response :success
  end

  test "should get edit" do
    get edit_businessline_url(@businessline)
    assert_response :success
  end

  test "should update businessline" do
    patch businessline_url(@businessline), params: { businessline: { description: @businessline.description, name: @businessline.name } }
    assert_redirected_to businessline_url(@businessline)
  end

  test "should destroy businessline" do
    assert_difference('Businessline.count', -1) do
      delete businessline_url(@businessline)
    end

    assert_redirected_to businesslines_url
  end
end
