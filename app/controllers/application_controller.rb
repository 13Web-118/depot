class ApplicationController < ActionController::Base
  before_filter :authorize
  before_filter :clientauthorize
  before_filter :set_i18n_locale_from_params

  protect_from_forgery


  private 

    def current_cart
      Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
      cart = Cart.create
      session[:cart_id] = cart.id
      cart
    end

    protected

    def authorize
        unless User.find_by_id(session[:user_id])
            redirect_to login_url, notice: "Please log in1"
        end
    end
    
    def clientauthorize
      unless Client.find_by_id(session[:client_id])
        redirect_to clientlogin_url,notice: "Please log in2"
      end
    end

    def set_i18n_locale_from_params
      if params[:locale]
        if I18n.available_locales.include?(params[:locale].to_sym)
          I18n.locale = params[:locale]
        else
          flash.now[:notice] = "#{params[:locale]} translation not available"
          logger.error flash.now[:notice]
        end
      end
    end

    def default_url_options
      {locale: I18n.locale}

    end
end