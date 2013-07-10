class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many:line_items,dependent: :destroy
  #has_many:line_items
end
