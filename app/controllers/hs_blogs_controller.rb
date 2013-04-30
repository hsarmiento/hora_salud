class HsBlogsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
	before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]	

	def index
		@entries = HsBlog.order("created_at desc")
		@page_description = 'Hora Salud, encuentra el doctor que necesitas. Enterate de
		las principales noticias de salud en nuestro blog'
		@page_keywords = 'hora, salud, blog, noticias, medico, doctor, consulta'
	end

	def show
		@entry = HsBlog.find(params[:id])
		@page_description = 'Hora Salud, encuentra el doctor que necesitas. Enterate de
		las principales noticias de salud en nuestro blog'
		@page_keywords = 'hora, salud, blog, noticias, medico, doctor, consulta, '+@entry.title
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

	def edit
		@entry = HsBlog.find(params[:id])		
	end

	def update
		@entry = HsBlog.find(params[:id])		
		if @entry.update_attributes(params[:hs_blog])
			flash[:success] = "La entrada se ha actualizado exitosamente"
			redirect_to blog_path(@entry)
		else
			render 'edit'			
		end
	end

	def destroy
		HsBlog.find(params[:id]).destroy
		flash[:success] = "Entrada eliminada exitosamente"
		redirect_to action: 'index'
	end

end