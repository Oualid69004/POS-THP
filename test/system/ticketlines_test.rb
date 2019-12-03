require "application_system_test_case"

class TicketlinesTest < ApplicationSystemTestCase
  setup do
    @ticketline = ticketlines(:one)
  end

  test "visiting the index" do
    visit ticketlines_url
    assert_selector "h1", text: "Ticketlines"
  end

  test "creating a Ticketline" do
    visit ticketlines_url
    click_on "New Ticketline"

    fill_in "Attributes", with: @ticketline.attributes
    fill_in "Line", with: @ticketline.line
    fill_in "Price", with: @ticketline.price
    fill_in "Taxid", with: @ticketline.taxid
    fill_in "Unitcost", with: @ticketline.unitCost
    fill_in "Units", with: @ticketline.units
    fill_in "Unitsrefund", with: @ticketline.unitsRefund
    click_on "Create Ticketline"

    assert_text "Ticketline was successfully created"
    click_on "Back"
  end

  test "updating a Ticketline" do
    visit ticketlines_url
    click_on "Edit", match: :first

    fill_in "Attributes", with: @ticketline.attributes
    fill_in "Line", with: @ticketline.line
    fill_in "Price", with: @ticketline.price
    fill_in "Taxid", with: @ticketline.taxid
    fill_in "Unitcost", with: @ticketline.unitCost
    fill_in "Units", with: @ticketline.units
    fill_in "Unitsrefund", with: @ticketline.unitsRefund
    click_on "Update Ticketline"

    assert_text "Ticketline was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticketline" do
    visit ticketlines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticketline was successfully destroyed"
  end
end
