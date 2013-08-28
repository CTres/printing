class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_create :generate_token

  # Attributes
  attr_accessible :email, :password, :password_confirmation, :remember_me, :token
	
	#Associations
	has_many :jobs
	has_many :items
	has_many :addresses

	#Attributes
	

	#Methods

	private
	def generate_token()
		begin
			self.token = SecureRandom.hex
		end while self.class.exists?(token: token)
	end
end
