class API::V1::JobsController < ApplicationController
	before_filter :restrict_access
	TOKEN = "SECRET"
respond_to :json

	def index
		@jobs = @user.jobs.all
		respond_with(@jobs)
	end

	def show
		@job = @user.jobs.find(params[:id])
		respond_with(@job)
	end

	def create
		
	end

	private
	def restrict_access
		puts "in restrict access"
		authenticate_or_request_with_http_token do |token, options|
			@user = User.find_by_token(token)
		end
	end
end
