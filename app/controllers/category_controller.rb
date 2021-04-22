class CategoryController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @products = Product.where("category_id = ?", params[:id])
    @categories = Category.find(params[:id])
  end
end
