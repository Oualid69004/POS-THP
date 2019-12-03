require "application_system_test_case"

class StocklevelsTest < ApplicationSystemTestCase
  setup do
    @stocklevel = stocklevels(:one)
  end

  test "visiting the index" do
    visit stocklevels_url
    assert_selector "h1", text: "Stocklevels"
  end

  test "creating a Stocklevel" do
    visit stocklevels_url
    click_on "New Stocklevel"

    fill_in "Location", with: @stocklevel.location
    fill_in "Stockmaximum", with: @stocklevel.stockmaximum
    fill_in "Stocksecurity", with: @stocklevel.stocksecurity
    click_on "Create Stocklevel"

    assert_text "Stocklevel was successfully created"
    click_on "Back"
  end

  test "updating a Stocklevel" do
    visit stocklevels_url
    click_on "Edit", match: :first

    fill_in "Location", with: @stocklevel.location
    fill_in "Stockmaximum", with: @stocklevel.stockmaximum
    fill_in "Stocksecurity", with: @stocklevel.stocksecurity
    click_on "Update Stocklevel"

    assert_text "Stocklevel was successfully updated"
    click_on "Back"
  end

  test "destroying a Stocklevel" do
    visit stocklevels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stocklevel was successfully destroyed"
  end
end
