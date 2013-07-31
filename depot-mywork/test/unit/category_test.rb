require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end 
  
  test "category attributes must not be empty"do
    category = Category.new
    assert category.invalid?
    assert category.errors[:title].any?
    assert category.errors[:parent_id].any?
  end
  
  test "category is not valid without a unique title" do
    category = Category.new(title: categories(:one).title,
      parent_id: 1
    )
    assert !category.save
    assert_equal "has already been taken", category.errors[:title].join(';')
  end
end
