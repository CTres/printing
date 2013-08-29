class Address < ActiveRecord::Base
	#Associations
	belongs_to :user
	has_many :job_addresses
	has_many :jobs, through: :job_addresses

  # Attributes
  attr_accessible :name, :address_line1, :address_line2, :address_city, :address_state, :address_zip, :address_country

end
