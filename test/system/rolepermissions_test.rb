require "application_system_test_case"

class RolepermissionsTest < ApplicationSystemTestCase
  setup do
    @rolepermission = rolepermissions(:one)
  end

  test "visiting the index" do
    visit rolepermissions_url
    assert_selector "h1", text: "Rolepermissions"
  end

  test "creating a Rolepermission" do
    visit rolepermissions_url
    click_on "New Rolepermission"

    click_on "Create Rolepermission"

    assert_text "Rolepermission was successfully created"
    click_on "Back"
  end

  test "updating a Rolepermission" do
    visit rolepermissions_url
    click_on "Edit", match: :first

    click_on "Update Rolepermission"

    assert_text "Rolepermission was successfully updated"
    click_on "Back"
  end

  test "destroying a Rolepermission" do
    visit rolepermissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rolepermission was successfully destroyed"
  end
end
