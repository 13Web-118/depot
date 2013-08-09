class CartsController < ApplicationController
  skip_before_filter :clientauthorize
  skip_before_filter :authorize, only: [:create, :update, :destroy, :itemDelete]
  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
    @cart=current_cart

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carts }
    end
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
	begin
		@cart = Cart.find(params[:id])
	rescue ActiveRecord::RecordNotFound
		logger.error "Attempt to access invalid cart #{params[:id]}"
		redirect_to store_url, notice: 'Invalid cart'
	else
		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @cart }
		end
    end
  end

  def itemDelete
    @cart = current_cart
    @line_item = LineItem.find(params[:line_item])
    LineItem.all.each do |line_item|
      if line_item.cart_id == @cart.id && line_item.product_id == @line_item.product_id
        line_item.destroy
      end
    end

    respond_to do |format|
      format.html {redirect_to mycart_path}
      format.json { render json: @cart}
    end
  end

  def itemChangeNumber
    @cart = current_cart
    @line_item = LineItem.find(params[:line_item])
    @number = params[:number] 
    respond_to do |format|
      format.html {redirect_to mycart_path}
      format.json { render json: @cart}
    end
  end

  # GET /carts/new
  # GET /carts/new.json
  def new
    @cart = Cart.new

    respond_to do |format|
      format.html 
      format.json { render json: @cart }
    end
  end

  # GET /carts/1/edit
  def edit
    @cart = Cart.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @cart }
    end
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(params[:cart])

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render json: @cart, status: :created, location: @cart }
      else
        format.html { render action: "new" }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carts/1
  # PUT /carts/1.json
  def update
    @cart = Cart.find(params[:id])

    respond_to do |format|
      if @cart.update_attributes(params[:cart])
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart = current_cart
    @cart.destroy
	session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to store_url}
      format.json { head :no_content }
    end
  end
end
