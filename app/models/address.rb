class Address < ActiveRecord::Base
	#Associations
	belongs_to :user
	belongs_to :job

  # Attributes
  attr_accessible :name, :address_line1, :address_line2, :address_city, :address_state, :address_zip, :address_country

end
