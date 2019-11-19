class ProductsController < ApplicationController
  def show
    @product = Product.first
  end
  def index
    @products = Product.all
  end

  def create
    @products = Product.new
  end

  def edit

  end

  def update
  end

  def destroy

  end

end
