class ProductsController < ApplicationController
  def index
  end
  def show
  	@product = Product.find_by_id(params[:id])
  	@relatedproducs = Product.all.sample(8)
  	@upsaleproducts = Product.all.sample(8)
  end
end
