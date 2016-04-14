class HomeController < ApplicationController
	require 'open-uri'
  require 'json'
  require 'csv'
  def index
  	@product = Product.all.sample(8)
  	@product2 = Product.all.sample(8)
  end

  def new
  end

  def import_csv
  	file = params[:upload_csv][:csv]  
		@i=1
		@status = false
		if File.extname(file.original_filename) == ".csv"
			p "----csv valid--------"
	  	CSV.foreach(file.path) do |row|
	  		p "------------#{row[0]}------------#{row[1]}-------------#{row[2]}"
	  		@category = Category.find_by_name(row[1])
	  		if !@category
	  			@category =Category.create!(:name=>row[1])
	  		end
	  		if row[2].present?
		  		@subcategory = @category.subcategories.find_by_name(row[2])
		  		if !@subcategory
		  			@subcategory = @category.subcategories.create(:name=>row[2])
		  		end
		  		@product = @subcategory.products.find_by_name(row[3])
		  		if !@product
		  			@product = @subcategory.products.create(:name=>row[3],:sku=>row[4],:price=>row[5],:list_price=>row[6],:reviews=>row[7],:ratings=>row[8],:category_id=>@category.id)
		  			if row[9].present?
		  				@imgs= row[9].split(',')
		  				if @imgs.present?
		  					@imgs.each do |i|
		  						@product.product_images.create(:image=>i) if !@product.product_images.exists?(:image=>i)
		  					end
		  				end
		  			end	
		  		end
		  	else
		  		@package = @category.packages.find_by_name(row[2])
		  		if !@package
		  			@package = @category.packages.create(:name=>row[3],:sku=>row[4],:price=>row[5],:list_price=>row[6],:reviews=>row[7],:ratings=>row[8])
		  			if row[9].present?
		  				@imgs= row[9].split(',')
		  				if @imgs.present?
		  					@imgs.each do |i|
		  						@package.package_images.create(:image=>i) if !@package.package_images.exists?(:image=>i)
		  					end
		  				end
		  			end
		  		end
		  	end
	  		# break;
	  	end
	  end
	  redirect_to csv_import_path
  end

  def catch_404
  	
  end
end
