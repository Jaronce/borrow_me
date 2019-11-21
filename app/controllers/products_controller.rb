class ProductsController < ApplicationController
#READ-------------------------------------------

  def index
    # @products = Product.all
    @products = Skill.find_by(name: params[:skill]).products
    @skill = Skill.find_by(name: params[:skill])
  end

  def show
    @product = Product.find(params[:id])
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
