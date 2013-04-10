class HsBlogsController < ApplicationController
	def index
		@entries = HsBlog.order("created_at desc")
	end

	def show
	end
end
