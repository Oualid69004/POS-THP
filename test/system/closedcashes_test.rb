require "application_system_test_case"

class ClosedcashesTest < ApplicationSystemTestCase
  setup do
    @closedcash = closedcashes(:one)
  end

  test "visiting the index" do
    visit closedcashes_url
    assert_selector "h1", text: "Closedcashes"
  end

  test "creating a Closedcash" do
    visit closedcashes_url
    click_on "New Closedcash"

    fill_in "Host", with: @closedcash.host
    fill_in "Hostsequence", with: @closedcash.hostsequence
    fill_in "Money", with: @closedcash.money
    click_on "Create Closedcash"

    assert_text "Closedcash was successfully created"
    click_on "Back"
  end

  test "updating a Closedcash" do
    visit closedcashes_url
    click_on "Edit", match: :first

    fill_in "Host", with: @closedcash.host
    fill_in "Hostsequence", with: @closedcash.hostsequence
    fill_in "Money", with: @closedcash.money
    click_on "Update Closedcash"

    assert_text "Closedcash was successfully updated"
    click_on "Back"
  end

  test "destroying a Closedcash" do
    visit closedcashes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Closedcash was successfully destroyed"
  end
end
