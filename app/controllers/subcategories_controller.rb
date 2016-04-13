class SubcategoriesController < ApplicationController
  def index
  	redirect_to subcategory_path(params[:subcategory_id])
  end
  def show
  	@subcategory = Subcategory.find_by_id(params[:id])
  end
end

