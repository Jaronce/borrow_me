class ProductsController < ApplicationController

  def index
    # @products = Product.all
    @products = Skill.find_by(name: params[:skill]).products
    @skill = Skill.find_by(name: params[:skill])

    @products_address = @products.geocoded

    @markers = @products_address.map do |product|
      {
        lat: product.latitude,
        lng: product.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { product: product })
      }
    end
  end

  def show
    @product = Product.find(params[:id])
    @markers = [{
        lat: @product.latitude,
        lng: @product.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { product: @product })
      }]
  end

#CREATE-----------------------------------------
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
#DESTROY----------------------------------------
  def destroy
  end
#EXTRA------------------------------------------
  private

  def product_params
    params.require(:product).permit(:name, :photo, :booking, :price, :city, :photo_cache)
  end
end
