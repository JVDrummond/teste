require 'test_helper'

class MenuProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu_product = menu_products(:one)
  end

  test "should get index" do
    get menu_products_url
    assert_response :success
  end

  test "should get new" do
    get new_menu_product_url
    assert_response :success
  end

  test "should create menu_product" do
    assert_difference('MenuProduct.count') do
      post menu_products_url, params: { menu_product: {  } }
    end

    assert_redirected_to menu_product_url(MenuProduct.last)
  end

  test "should show menu_product" do
    get menu_product_url(@menu_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_menu_product_url(@menu_product)
    assert_response :success
  end

  test "should update menu_product" do
    patch menu_product_url(@menu_product), params: { menu_product: {  } }
    assert_redirected_to menu_product_url(@menu_product)
  end

  test "should destroy menu_product" do
    assert_difference('MenuProduct.count', -1) do
      delete menu_product_url(@menu_product)
    end

    assert_redirected_to menu_products_url
  end
end
