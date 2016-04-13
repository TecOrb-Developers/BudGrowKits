class CategoriesController < ApplicationController
  def index
  end
  def show
  	@category = Category.find_by_id(params[:id])
  end
  def category
  	@category = Category.find_by_id(params[:category_id])
  end
end
