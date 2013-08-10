class Address < ActiveRecord::Base
	#Associations
	belongs_to :user
  # attr_accessible :title, :body
end
