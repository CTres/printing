class API::V1::JobsController < BaseController
	before_filter :restrict_access
	
	def index
		jobs = @user.jobs.all
		expose jobs
	end

	def show
		job = @user.jobs.find(params[:id])
		expose job
	end

	def create
		job = @user.jobs.create(params[:job])
		expose job
	end

private
	def restrict_access
		error! :unauthenticated unless authenticate_with_http_token do |token, options|
			@user = User.find_by_token(token)
		end
	end
end