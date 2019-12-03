require "application_system_test_case"

class TypeproductsTest < ApplicationSystemTestCase
  setup do
    @typeproduct = typeproducts(:one)
  end

  test "visiting the index" do
    visit typeproducts_url
    assert_selector "h1", text: "Typeproducts"
  end

  test "creating a Typeproduct" do
    visit typeproducts_url
    click_on "New Typeproduct"

    fill_in "Line", with: @typeproduct.line
    click_on "Create Typeproduct"

    assert_text "Typeproduct was successfully created"
    click_on "Back"
  end

  test "updating a Typeproduct" do
    visit typeproducts_url
    click_on "Edit", match: :first

    fill_in "Line", with: @typeproduct.line
    click_on "Update Typeproduct"

    assert_text "Typeproduct was successfully updated"
    click_on "Back"
  end

  test "destroying a Typeproduct" do
    visit typeproducts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Typeproduct was successfully destroyed"
  end
end
