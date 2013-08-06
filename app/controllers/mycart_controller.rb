class MycartController < ApplicationController
  skip_before_filter :clientauthorize
  skip_before_filter :authorize
    
  def index
      @cart = current_cart
  end
end
