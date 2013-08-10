class JobsController < ApplicationController
	respond_to :json
	def index
		@jobs = Job.all
		puts @jobs
		respond_to do |format|
			format.json { render @jobs}
		end
	end


	def show
		@job = Job.find(params[:id])
	end

end
