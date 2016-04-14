module ApplicationHelper
	def categories
		Category.all
	end
	def drop_list_class serial
		case serial 
		when 1    #compare to 1
		  "level0 parent drop-menu active"
		when 2    #compare to 2
		  "level0 parent drop-menu"
		when 3
			"level0 parent level-top nav-5 first"
		when 4
			"level0 parent level-top nav-7"
		when 5
			"level0 parent level-top nav-6"
		when 6
			"level0 parent level-top nav-7"
		when 7
			"level0 parent level-top nav-custom-link"
		when 8
			"level0 level-top nav-8"
		when 9
			"level0 level-top nav-8"			
		else
		 "level0 parent drop-menu"
		end
	end

	def product_image product,img_no
		if img_no==1
			img1 = product.product_images.first.present? ? "http://tecorb.com/admin/growace/images/#{product.sku.gsub('[','').gsub(']','').strip}_1.jpg" : "/assets/p7.jpg"
		elsif img_no==2
			img1 = product.product_images.second.present? ? "http://tecorb.com/admin/growace/images/#{product.sku.gsub('[','').gsub(']','').strip}_2.jpg" : "/assets/large-icon-sitemap.png"
		else
			img1 = "http://tecorb.com/admin/growace/images200/#{product.sku.gsub('[','').gsub(']','').strip}_#{img_no}.jpg" 
		end
	end

	def product_large_image product,img_no
		if img_no==1
			img1 = product.product_images.first.present? ? "http://tecorb.com/admin/growace/images/#{product.sku.gsub('[','').gsub(']','').strip}_1.jpg" : "/assets/p7.jpg"
		elsif img_no==2
			img1 = product.product_images.second.present? ? "http://tecorb.com/admin/growace/images/#{product.sku.gsub('[','').gsub(']','').strip}_2.jpg" : "/assets/large-icon-sitemap.png"
		else
			img1 = "http://tecorb.com/admin/growace/images/#{product.sku.gsub('[','').gsub(']','').strip}_#{img_no}.jpg" 
		end
	end

	def product_small_image product,img_no
		if img_no==1
			img1 = product.product_images.first.present? ? "http://tecorb.com/admin/growace/images112/#{product.sku.gsub('[','').gsub(']','').strip}_1.jpg" : "/assets/p7.jpg"
		elsif img_no==2
			img1 = product.product_images.second.present? ? "http://tecorb.com/admin/growace/images112/#{product.sku.gsub('[','').gsub(']','').strip}_2.jpg" : "/assets/large-icon-sitemap.png"
		else
			img1 = "http://tecorb.com/admin/growace/images112/#{product.sku.gsub('[','').gsub(']','').strip}_#{img_no}.jpg" 
		end
	end

	def package_image package,img_no
		if img_no==1
			img1 = package.package_images.first.present? ? "http://tecorb.com/admin/growace/images/#{package.sku.gsub('[','').gsub(']','').strip}_1.jpg" : "/assets/p7.jpg"
		elsif img_no==2
			img1 = package.package_images.second.present? ? "http://tecorb.com/admin/growace/images/#{package.sku.gsub('[','').gsub(']','').strip}_2.jpg" : "/assets/large-icon-sitemap.png"
		else
			img1 = "http://tecorb.com/admin/growace/images200/#{package.sku.gsub('[','').gsub(']','').strip}_#{img_no}.jpg" 
		end
	end
	def package_small_image package,img_no
		if img_no==1
			img1 = package.package_images.first.present? ? "http://tecorb.com/admin/growace/images112/#{package.sku.gsub('[','').gsub(']','').strip}_1.jpg" : "/assets/p7.jpg"
		elsif img_no==2
			img1 = package.package_images.second.present? ? "http://tecorb.com/admin/growace/images112/#{package.sku.gsub('[','').gsub(']','').strip}_2.jpg" : "/assets/large-icon-sitemap.png"
		else
			img1 = "http://tecorb.com/admin/growace/images112/#{package.sku.gsub('[','').gsub(']','').strip}_#{img_no}.jpg" 
		end
	end


end
