class PackagesController < ApplicationController
	def index
		
	end
	def show
		@product = Package.find_by_id(params[:id])
	  	@relatedproducs = Package.all.sample(8)
	  	@upsaleproducts = Package.all.sample(8)
	end

	def package
		@subcategory = Category.find_by_id(params[:id])
	end
	
end
