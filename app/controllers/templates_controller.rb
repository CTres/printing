class TemplatesController < ApplicationController
	def index
		@user = current_user
		@templates = @user.templates.all
	end

	def show
		@template = Template.find(params[:id])
	end

	def new
	end

	def create
	end

end
