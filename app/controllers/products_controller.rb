class ProductsController < ApplicationController
#READ-------------------------------------------
  def show
    # @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
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
    params.require(:product).permit(:name, :photo, :booking)
  end
end
