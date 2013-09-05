class Template < ActiveRecord::Base
#Associations
belongs_to :user

#Attributes
attr_accessible :name, :url

end
