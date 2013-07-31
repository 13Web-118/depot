class AdminController < ApplicationController
    skip_before_filter :clientauthorize
  def index
      @total_orders = Order.count
  end
end
