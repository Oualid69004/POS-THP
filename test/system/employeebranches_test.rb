require "application_system_test_case"

class EmployeebranchesTest < ApplicationSystemTestCase
  setup do
    @employeebranch = employeebranches(:one)
  end

  test "visiting the index" do
    visit employeebranches_url
    assert_selector "h1", text: "Employeebranches"
  end

  test "creating a Employeebranch" do
    visit employeebranches_url
    click_on "New Employeebranch"

    click_on "Create Employeebranch"

    assert_text "Employeebranch was successfully created"
    click_on "Back"
  end

  test "updating a Employeebranch" do
    visit employeebranches_url
    click_on "Edit", match: :first

    click_on "Update Employeebranch"

    assert_text "Employeebranch was successfully updated"
    click_on "Back"
  end

  test "destroying a Employeebranch" do
    visit employeebranches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employeebranch was successfully destroyed"
  end
end
