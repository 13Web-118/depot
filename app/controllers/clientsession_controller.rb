class ClientsessionController < ApplicationController
  skip_before_filter :authorize
      skip_before_filter :clientauthorize,only: [:new,:create]
  def new
  @cart=current_cart
  end

  def create
    client=Client.find_by_name(params[:name])
    if client and client.authenticate(params[:password])
      session[:client_id]=client.id
      redirect_to clientadmin_url
    else
      redirect_to clientlogin_url,alert: "Invalid client/password combination"
    end
  end

  def destroy
    session[:client_id]=nil
    redirect_to clientlogin_url,alert: "Logged out"
  end
end
