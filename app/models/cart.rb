class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_items, dependent:  :destroy
  
    def add_product(product_id)
	  current_item = line_items.find_by_product_id(product_id)
	  if current_item
		  current_item.quantity += 1
	  else
		  current_item = line_items.build(product_id: product_id)
	  end
	   current_item
    end

    def delete_line_item(line_item_id)
    	current_item = line_items.find_by_id(line_item_id)
    	if current_item
    		line_items.destroy(current_item)
    	end
    	line_items

    end

    def total_number
    	line_items.to_a.sum{|item| item.quantity}
    end
	 
	def total_price
		line_items.to_a.sum{|item| item.total_price}
	end
end
