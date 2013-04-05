class HsDoctorsController < ApplicationController
	respond_to :html

	def search
		@doctors = HsDoctor.paginate(:page => params[:page], per_page: 1).search(params[:search], params[:state], params[:township])
		@search_tag = params[:search]
		@township_tag = params[:township]
		@state_tag = params[:state]
		respond_to do |format|
    		format.html { render html: @doctors }
    	end
	end

end