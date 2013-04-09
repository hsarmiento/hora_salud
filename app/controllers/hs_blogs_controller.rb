class HsBlogsController < ApplicationController
	def index
		@entries = HsBlog.all
	end
end
