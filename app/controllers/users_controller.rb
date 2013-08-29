class UsersController < ApplicationController

	def index
		@user = current_user
		@jobs = @user.jobs.all
	end

	def settings
		@user = current_user
	end
end
