require 'test_helper'

class ClosedcashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @closedcash = closedcashes(:one)
  end

  test "should get index" do
    get closedcashes_url
    assert_response :success
  end

  test "should get new" do
    get new_closedcash_url
    assert_response :success
  end

  test "should create closedcash" do
    assert_difference('Closedcash.count') do
      post closedcashes_url, params: { closedcash: { host: @closedcash.host, hostsequence: @closedcash.hostsequence, money: @closedcash.money } }
    end

    assert_redirected_to closedcash_url(Closedcash.last)
  end

  test "should show closedcash" do
    get closedcash_url(@closedcash)
    assert_response :success
  end

  test "should get edit" do
    get edit_closedcash_url(@closedcash)
    assert_response :success
  end

  test "should update closedcash" do
    patch closedcash_url(@closedcash), params: { closedcash: { host: @closedcash.host, hostsequence: @closedcash.hostsequence, money: @closedcash.money } }
    assert_redirected_to closedcash_url(@closedcash)
  end

  test "should destroy closedcash" do
    assert_difference('Closedcash.count', -1) do
      delete closedcash_url(@closedcash)
    end

    assert_redirected_to closedcashes_url
  end
end
