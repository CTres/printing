class UsersController < ApplicationController

def index
	@user = current_user
	@jobs = @user.jobs.all
end


end
