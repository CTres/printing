class Job < ActiveRecord::Base
  #Associations
  belongs_to :user
  has_many :job_addresses
  has_many :recipients, class_name: 'Address', through: :job_addresses, source: :address
  accepts_nested_attributes_for :recipients, reject_if: proc { |attributes| attributes['address_line1'].blank? }
  
  has_one :item
  accepts_nested_attributes_for :item
  
  #Attributes
  attr_accessible :name, :price, :quantity, :status, :items, :to_adr, :from_adr
  attr_reader :job_id, :tracking
  
end
