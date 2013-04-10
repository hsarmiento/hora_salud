class HsBlogsController < ApplicationController
	def index
		@entries = HsBlog.order("created_at desc")
	end

	def show
		@entry = HsBlog.find(params[:id])
	end
end
