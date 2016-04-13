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
end
