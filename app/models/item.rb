class Item < ActiveRecord::Base
  	#Associations
  	belongs_to :user
  	belongs_to :job
    has_one :packaging
 		has_one :setting
end
