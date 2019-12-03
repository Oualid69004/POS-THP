require 'test_helper'

class TypeproductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @typeproduct = typeproducts(:one)
  end

  test "should get index" do
    get typeproducts_url
    assert_response :success
  end

  test "should get new" do
    get new_typeproduct_url
    assert_response :success
  end

  test "should create typeproduct" do
    assert_difference('Typeproduct.count') do
      post typeproducts_url, params: { typeproduct: { line: @typeproduct.line } }
    end

    assert_redirected_to typeproduct_url(Typeproduct.last)
  end

  test "should show typeproduct" do
    get typeproduct_url(@typeproduct)
    assert_response :success
  end

  test "should get edit" do
    get edit_typeproduct_url(@typeproduct)
    assert_response :success
  end

  test "should update typeproduct" do
    patch typeproduct_url(@typeproduct), params: { typeproduct: { line: @typeproduct.line } }
    assert_redirected_to typeproduct_url(@typeproduct)
  end

  test "should destroy typeproduct" do
    assert_difference('Typeproduct.count', -1) do
      delete typeproduct_url(@typeproduct)
    end

    assert_redirected_to typeproducts_url
  end
end
