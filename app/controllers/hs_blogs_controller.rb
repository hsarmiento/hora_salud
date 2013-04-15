class HsBlogsController < ApplicationController
	def index
		@entries = HsBlog.order("created_at desc")
	end

	def show
		@entry = HsBlog.find(params[:id])
	end

	def new
		@entry = HsBlog.new
	end

	def create
		@entry = HsBlog.new(params[:hs_blog])
		if @entry.save
			flash[:success] = "La entrada se ha agregado exitosamente"
			redirect_to blog_path(@entry)
		else
			render 'new'
		end
	end

end
