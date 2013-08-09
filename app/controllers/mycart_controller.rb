class MycartController < ApplicationController
  skip_before_filter :clientauthorize
  skip_before_filter :authorize
    
  def index
      @cart = current_cart
    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.json { render json: @cart }
    end
  end
end
