class PackagesController < ApplicationController
	def show
		@product = Package.find_by_id(params[:id])
	  	@relatedproducs = Package.all.sample(8)
	  	@upsaleproducts = Package.all.sample(8)
	end
	
end
