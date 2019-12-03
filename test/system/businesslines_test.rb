require "application_system_test_case"

class BusinesslinesTest < ApplicationSystemTestCase
  setup do
    @businessline = businesslines(:one)
  end

  test "visiting the index" do
    visit businesslines_url
    assert_selector "h1", text: "Businesslines"
  end

  test "creating a Businessline" do
    visit businesslines_url
    click_on "New Businessline"

    fill_in "Description", with: @businessline.description
    fill_in "Name", with: @businessline.name
    click_on "Create Businessline"

    assert_text "Businessline was successfully created"
    click_on "Back"
  end

  test "updating a Businessline" do
    visit businesslines_url
    click_on "Edit", match: :first

    fill_in "Description", with: @businessline.description
    fill_in "Name", with: @businessline.name
    click_on "Update Businessline"

    assert_text "Businessline was successfully updated"
    click_on "Back"
  end

  test "destroying a Businessline" do
    visit businesslines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Businessline was successfully destroyed"
  end
end
