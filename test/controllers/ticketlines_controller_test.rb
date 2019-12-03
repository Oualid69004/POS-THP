require 'test_helper'

class TicketlinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticketline = ticketlines(:one)
  end

  test "should get index" do
    get ticketlines_url
    assert_response :success
  end

  test "should get new" do
    get new_ticketline_url
    assert_response :success
  end

  test "should create ticketline" do
    assert_difference('Ticketline.count') do
      post ticketlines_url, params: { ticketline: { attributes: @ticketline.attributes, line: @ticketline.line, price: @ticketline.price, taxid: @ticketline.taxid, unitCost: @ticketline.unitCost, units: @ticketline.units, unitsRefund: @ticketline.unitsRefund } }
    end

    assert_redirected_to ticketline_url(Ticketline.last)
  end

  test "should show ticketline" do
    get ticketline_url(@ticketline)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticketline_url(@ticketline)
    assert_response :success
  end

  test "should update ticketline" do
    patch ticketline_url(@ticketline), params: { ticketline: { attributes: @ticketline.attributes, line: @ticketline.line, price: @ticketline.price, taxid: @ticketline.taxid, unitCost: @ticketline.unitCost, units: @ticketline.units, unitsRefund: @ticketline.unitsRefund } }
    assert_redirected_to ticketline_url(@ticketline)
  end

  test "should destroy ticketline" do
    assert_difference('Ticketline.count', -1) do
      delete ticketline_url(@ticketline)
    end

    assert_redirected_to ticketlines_url
  end
end
