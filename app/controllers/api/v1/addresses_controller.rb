class API::V1::AddressesController < BaseController
before_filter :restrict_access

def index
	addresses = @user.addresses.all
	expose addresses
end

def create
	address = @user.addresses.create(params[:address])
	expose address
end

def show
	address = @user.addresses.find_by_id(params[:id])
	expose address
end

def update
	address = @user.addresses.find_by_id(params[:id])
	address.update_attributes(params[:address])
end

private
	def restrict_access
		error! :unauthenticated unless authenticate_with_http_token do |token, options|
			@user = User.find_by_token(token)
		end
	end
end
