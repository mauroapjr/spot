require "test_helper"

class CreateProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_product = create_products(:one)
  end

  test "should get index" do
    get create_products_url
    assert_response :success
  end

  test "should get new" do
    get new_create_product_url
    assert_response :success
  end

  test "should create create_product" do
    assert_difference('CreateProduct.count') do
      post create_products_url, params: { create_product: { description: @create_product.description, image: @create_product.image, label: @create_product.label, price: @create_product.price, quantity: @create_product.quantity } }
    end

    assert_redirected_to create_product_url(CreateProduct.last)
  end

  test "should show create_product" do
    get create_product_url(@create_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_product_url(@create_product)
    assert_response :success
  end

  test "should update create_product" do
    patch create_product_url(@create_product), params: { create_product: { description: @create_product.description, image: @create_product.image, label: @create_product.label, price: @create_product.price, quantity: @create_product.quantity } }
    assert_redirected_to create_product_url(@create_product)
  end

  test "should destroy create_product" do
    assert_difference('CreateProduct.count', -1) do
      delete create_product_url(@create_product)
    end

    assert_redirected_to create_products_url
  end
end
