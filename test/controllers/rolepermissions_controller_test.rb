require 'test_helper'

class RolepermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rolepermission = rolepermissions(:one)
  end

  test "should get index" do
    get rolepermissions_url
    assert_response :success
  end

  test "should get new" do
    get new_rolepermission_url
    assert_response :success
  end

  test "should create rolepermission" do
    assert_difference('Rolepermission.count') do
      post rolepermissions_url, params: { rolepermission: {  } }
    end

    assert_redirected_to rolepermission_url(Rolepermission.last)
  end

  test "should show rolepermission" do
    get rolepermission_url(@rolepermission)
    assert_response :success
  end

  test "should get edit" do
    get edit_rolepermission_url(@rolepermission)
    assert_response :success
  end

  test "should update rolepermission" do
    patch rolepermission_url(@rolepermission), params: { rolepermission: {  } }
    assert_redirected_to rolepermission_url(@rolepermission)
  end

  test "should destroy rolepermission" do
    assert_difference('Rolepermission.count', -1) do
      delete rolepermission_url(@rolepermission)
    end

    assert_redirected_to rolepermissions_url
  end
end
