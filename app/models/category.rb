class Category < ActiveRecord::Base
  attr_accessible :parent_id, :title
  validates :parent_id, :title, presence: true
  validates :title, uniqueness: true
end
