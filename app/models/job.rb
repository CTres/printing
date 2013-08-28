class Job < ActiveRecord::Base
  #Associations
  belongs_to :user
  has_many :addresses
  # has_one :to_adr, class_name: 'Address', through: :jobs_addresses
  # has_one :from_adr, class_name: 'Address', through: :jobs_addresses
  # accepts_nested_attributes_for :addresses
  has_many :items 
  #accepts_nested_attributes_for :items
  
  #Attributes
  attr_accessible :name, :price, :quantity, :status, :items, :to_adr, :from_adr
  attr_reader :job_id, :tracking
  
end
