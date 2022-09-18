require "application_system_test_case"

class MenuProductsTest < ApplicationSystemTestCase
  setup do
    @menu_product = menu_products(:one)
  end

  test "visiting the index" do
    visit menu_products_url
    assert_selector "h1", text: "Menu Products"
  end

  test "creating a Menu product" do
    visit menu_products_url
    click_on "New Menu Product"

    click_on "Create Menu product"

    assert_text "Menu product was successfully created"
    click_on "Back"
  end

  test "updating a Menu product" do
    visit menu_products_url
    click_on "Edit", match: :first

    click_on "Update Menu product"

    assert_text "Menu product was successfully updated"
    click_on "Back"
  end

  test "destroying a Menu product" do
    visit menu_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menu product was successfully destroyed"
  end
end
