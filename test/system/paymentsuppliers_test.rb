require "application_system_test_case"

class PaymentsuppliersTest < ApplicationSystemTestCase
  setup do
    @paymentsupplier = paymentsuppliers(:one)
  end

  test "visiting the index" do
    visit paymentsuppliers_url
    assert_selector "h1", text: "Paymentsuppliers"
  end

  test "creating a Paymentsupplier" do
    visit paymentsuppliers_url
    click_on "New Paymentsupplier"

    fill_in "Paymentnote", with: @paymentsupplier.paymentNote
    fill_in "Paymentvalue", with: @paymentsupplier.paymentValue
    click_on "Create Paymentsupplier"

    assert_text "Paymentsupplier was successfully created"
    click_on "Back"
  end

  test "updating a Paymentsupplier" do
    visit paymentsuppliers_url
    click_on "Edit", match: :first

    fill_in "Paymentnote", with: @paymentsupplier.paymentNote
    fill_in "Paymentvalue", with: @paymentsupplier.paymentValue
    click_on "Update Paymentsupplier"

    assert_text "Paymentsupplier was successfully updated"
    click_on "Back"
  end

  test "destroying a Paymentsupplier" do
    visit paymentsuppliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Paymentsupplier was successfully destroyed"
  end
end
