class Package < ActiveRecord::Base
  belongs_to :category
  has_many :package_images ,:dependent=>:destroy
end
