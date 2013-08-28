class API::V1::ItemsController < BaseController
	respond_to :json
	
	def index 
		@user = User.find_by_token(params[:token])
		@items = @user.items.all
	end

	def create
		@user = User.find_by_token(params[:token])
		@item = @user.item.new(params[:item])
	end
end
