require "application_system_test_case"

class CreateProductsTest < ApplicationSystemTestCase
  setup do
    @create_product = create_products(:one)
  end

  test "visiting the index" do
    visit create_products_url
    assert_selector "h1", text: "Create Products"
  end

  test "creating a Create product" do
    visit create_products_url
    click_on "New Create Product"

    fill_in "Description", with: @create_product.description
    fill_in "Image", with: @create_product.image
    fill_in "Label", with: @create_product.label
    fill_in "Price", with: @create_product.price
    fill_in "Quantity", with: @create_product.quantity
    click_on "Create Create product"

    assert_text "Create product was successfully created"
    click_on "Back"
  end

  test "updating a Create product" do
    visit create_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @create_product.description
    fill_in "Image", with: @create_product.image
    fill_in "Label", with: @create_product.label
    fill_in "Price", with: @create_product.price
    fill_in "Quantity", with: @create_product.quantity
    click_on "Update Create product"

    assert_text "Create product was successfully updated"
    click_on "Back"
  end

  test "destroying a Create product" do
    visit create_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create product was successfully destroyed"
  end
end
