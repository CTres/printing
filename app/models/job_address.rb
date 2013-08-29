class JobAddress < ActiveRecord::Base
	#Associations
	belongs_to :job
	belongs_to :address, :dependent => :destroy

	#Attributes
	attr_accessible :job_id, :address_id
end
