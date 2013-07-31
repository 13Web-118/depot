class StoreController < ApplicationController
  skip_before_filter :authorize
  def index
    if params[:set_locale]
      redirect_to store_path(locale: params[:set_locale])
    else
      if params[:search]
        @products = Product.search(params[:search])
      else
        if params[:id]
          @products = Array.new
          category = Category.find(params[:id])
          if category.parent_id == 0
              CategoryProduct.all.each do |category_product|
                if category_product.category_id == 0
                  Product.all.each do |product|
                    if product.id == category_product.product_id
                      @products.push(product)
                    end
                  end
                end
              end
          
              Category.all.each do |category2|
                if category2.parent_id == category.id
                  CategoryProduct.all.each do |category_product|
                    if category_product.category_id == category2.id
                      Product.all.each do |product|
                        if product.id == category_product.product_id
                          @products.push(product)
                        end
                      end
                    end
                  end
                end
              end
            else
              CategoryProduct.all.each do |category_product|
                if category_product.category_id == category.id
                  Product.all.each do |product|
                    if product.id == category_product.product_id
                      @products.push(product)
                    end
                  end
                end
              end
            end
          else
            @products = Product.all
          end
        end
    end
    @products = Kaminari.paginate_array(@products).page(params[:page]).per(10)
    @cart = current_cart
  end
end