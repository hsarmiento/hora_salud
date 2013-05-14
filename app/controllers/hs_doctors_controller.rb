class HsDoctorsController < ApplicationController
	respond_to :html

	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
	before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]

	def search
		@doctors = HsDoctor.paginate(page:  params[:page], per_page: 10).search(params[:search], params[:state], params[:township], params[:specialty])
		@search_tag = params[:search]
		@township_tag = params[:township]
		@state_tag = params[:state]
		@specialty = params[:specialty]
		@page_keywords = @specialty+',hora, salud, doctor, encontrar, buscar, consulta'
		if @township_tag != ''
			@page_keywords = @page_keywords+','+@township_tag
		end
		respond_to do |format|
    		format.html { render html: @doctors }
    	end
	end

	def index
		@hs_doctors = HsDoctor.all		
	end

	def show
		@hs_doctor = HsDoctor.find(params[:id])
	end

	def new
		@hs_doctor = HsDoctor.new
		@hs_specialties = HsSpecialty.find(:all, order: "name asc")		
	end

	def create
		@hs_doctor = HsDoctor.new(params[:hs_doctor])
		if @hs_doctor.save
			flash[:success] = "El doctor se ha agregado exitosamente"
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def edit
		@hs_doctor = HsDoctor.find(params[:id])
		@hs_specialties = HsSpecialty.find(:all, order: "name asc")	
	end

	def update
		@hs_doctor = HsDoctor.find(params[:id])
		if @hs_doctor.update_attributes(params[:hs_doctor])
			flash[:success] = "Doctor actualizado"
			redirect_to @hs_doctor			
		else
			render 'edit'
		end
	end

	def destroy
		HsDoctor.find(params[:id]).destroy
		flash[:success] = "Doctor eliminado exitosamente"
		redirect_to action: 'index'
	end
end