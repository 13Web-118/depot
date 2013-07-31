class ClientadminController < ApplicationController
  skip_before_filter :authorize
      skip_before_filter :clientauthorize
  def index
    @client=Client.find_by_id(session[:client_id])
	@cart=current_cart
  end
end
