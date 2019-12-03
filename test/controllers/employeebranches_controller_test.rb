require 'test_helper'

class EmployeebranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeebranch = employeebranches(:one)
  end

  test "should get index" do
    get employeebranches_url
    assert_response :success
  end

  test "should get new" do
    get new_employeebranch_url
    assert_response :success
  end

  test "should create employeebranch" do
    assert_difference('Employeebranch.count') do
      post employeebranches_url, params: { employeebranch: {  } }
    end

    assert_redirected_to employeebranch_url(Employeebranch.last)
  end

  test "should show employeebranch" do
    get employeebranch_url(@employeebranch)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeebranch_url(@employeebranch)
    assert_response :success
  end

  test "should update employeebranch" do
    patch employeebranch_url(@employeebranch), params: { employeebranch: {  } }
    assert_redirected_to employeebranch_url(@employeebranch)
  end

  test "should destroy employeebranch" do
    assert_difference('Employeebranch.count', -1) do
      delete employeebranch_url(@employeebranch)
    end

    assert_redirected_to employeebranches_url
  end
end
