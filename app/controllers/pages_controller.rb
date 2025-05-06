class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :store, :about]
  def home
    @products = Product.all
    # @categories = Category.all
  end
  
  def store 
  end

  def about
  end
  
end
