class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def search 

    @products = Product.where("name LIKE ? or description LIKE ?", "%" + params[:q] + "%", "%" + params[:q] + "%")
  end

  def sale 
    @products = Product.where("sale LIKE 1")
  end

  def recent
    @products = Product.where("created_at > (SELECT DATETIME('now', '-3 day'))")
  end

  def advanced
    
  end
  
end
