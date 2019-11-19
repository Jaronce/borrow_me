class PagesController < ApplicationController

  def home
    @skills = Skill.all
    @products = Product.all
  end

end
