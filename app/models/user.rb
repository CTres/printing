class User < ActiveRecord::Base
	before_create :generate_token
	#Associations
	has_many :jobs
	has_many :items
	has_many :addresses

	#Attributes
	attr_reader :token

	#Methods

	private
	def generate_token()
		begin
			self.token = SecureRandom.hex
		end while self.class.exists?(token: token)
	end
end
