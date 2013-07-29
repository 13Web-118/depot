class CategoryProduct < ActiveRecord::Base
  attr_accessible :category_id, :product_id
  validates :category_id, :product_id, presence: true
end
