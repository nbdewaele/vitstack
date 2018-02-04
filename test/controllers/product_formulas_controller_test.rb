require 'test_helper'

class ProductFormulasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get product_formulas_index_url
    assert_response :success
  end

  test "should get create" do
    get product_formulas_create_url
    assert_response :success
  end

  test "should get update" do
    get product_formulas_update_url
    assert_response :success
  end

  test "should get edit" do
    get product_formulas_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get product_formulas_destroy_url
    assert_response :success
  end

  test "should get show" do
    get product_formulas_show_url
    assert_response :success
  end

end
