class Job < ActiveRecord::Base
  #Associations
  belongs_to :user
  has_many :items
  has_many :addresses


  #Attributes
  attr_accessible :name, :price, :quantity, :status, :tracking
  attr_reader :job_id
  
end
