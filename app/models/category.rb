class Category < ActiveRecord::Base
	has_many :subcategories ,:dependent=>:destroy
	has_many :products ,:dependent=>:destroy
	has_many :packages, :dependent=>:destroy
end
