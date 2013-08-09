require 'test_helper'

class CategoryProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "category_product attributes must not be empty"do
    category_product = CategoryProduct.new
    assert category_product.invalid?
    assert category_product.errors[:product_id].any?
    assert category_product.errors[:category_id].any?
  end
  
end
