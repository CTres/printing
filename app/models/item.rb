class Item < ActiveRecord::Base
  	#Associations
  	has_and_belongs_to_many :jobs
    has_one :packaging
 		has_one :setting
end
