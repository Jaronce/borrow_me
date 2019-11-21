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
    @skills = Skill.all
  end

  def create
    @product = Product.new(product_params)

    @product.user = current_user
    if @product.save
      params[:skills].keys.each do |skill_id|
        ProductSkill.create(product: @product, skill_id: skill_id)
      end
      redirect_to product_path(@product)
    else
      render :new
    end
  end

#DESTROY----------------------------------------
  def destroy
    @product = Product.find(params[:id])
    @product.skills.delete_all
    @product.delete

    redirect_to user_path(current_user)
  end
#EXTRA------------------------------------------
  private

  def product_params
    params.require(:product).permit(:name, :booking, :price, :city, :photo_cache, :photo, skill_ids: [])
  end
end
