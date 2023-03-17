require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get index_products_url
    assert_response :success
  end
end
