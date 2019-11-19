class ProductsController < ApplicationController
  def show
    @product = Product.first
  end

end
