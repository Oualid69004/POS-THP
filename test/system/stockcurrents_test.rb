require "application_system_test_case"

class StockcurrentsTest < ApplicationSystemTestCase
  setup do
    @stockcurrent = stockcurrents(:one)
  end

  test "visiting the index" do
    visit stockcurrents_url
    assert_selector "h1", text: "Stockcurrents"
  end

  test "creating a Stockcurrent" do
    visit stockcurrents_url
    click_on "New Stockcurrent"

    fill_in "Cost", with: @stockcurrent.cost
    fill_in "Idstockcurrent", with: @stockcurrent.idstockcurrent
    fill_in "Total", with: @stockcurrent.total
    fill_in "Units", with: @stockcurrent.units
    click_on "Create Stockcurrent"

    assert_text "Stockcurrent was successfully created"
    click_on "Back"
  end

  test "updating a Stockcurrent" do
    visit stockcurrents_url
    click_on "Edit", match: :first

    fill_in "Cost", with: @stockcurrent.cost
    fill_in "Idstockcurrent", with: @stockcurrent.idstockcurrent
    fill_in "Total", with: @stockcurrent.total
    fill_in "Units", with: @stockcurrent.units
    click_on "Update Stockcurrent"

    assert_text "Stockcurrent was successfully updated"
    click_on "Back"
  end

  test "destroying a Stockcurrent" do
    visit stockcurrents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stockcurrent was successfully destroyed"
  end
end
