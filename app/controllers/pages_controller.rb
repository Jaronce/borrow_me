class PagesController < ApplicationController

  def home
    @products = Product.all
    @skills = Skill.all
  end

end
