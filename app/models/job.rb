class Job < ActiveRecord::Base
  #Associations
  belongs_to :user
  has_many :items
  accepts_nested_attributes_for :items
  has_many :addresses
  accepts_nested_attributes_for :addresses


  #Attributes
  attr_accessible :name, :price, :quantity, :status, :items
  attr_reader :job_id, :tracking
  
end
