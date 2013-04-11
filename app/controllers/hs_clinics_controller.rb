class HsClinicsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]
	before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]

	def index
		@hs_clinics = HsClinic.all
	end

	def show
		@hs_clinic = HsClinic.find(params[:id])
	end

	def new
		@hs_clinic = HsClinic.new
	end

	def create
		@hs_clinic = HsClinic.new(params[:hs_clinic])
		if @hs_clinic.save
			flash[:success] = "La clinica se ha agregado exitosamente"
			redirect_to action: 'index'
		else
			render 'new'
		end
	end

	def edit
		@hs_clinic = HsClinic.find(params[:id])
	end

	def update
		@hs_clinic = HsClinic.find(params[:id])
		if @hs_clinic.update_attributes(params[:hs_clinic])
			flash[:success] = "Clinica actualizada"
			redirect_to @hs_clinic
		else
			render 'edit'
		end
	end

	def destroy
		HsClinic.find(params[:id]).destroy
		flash[:success] = "Clinica eliminada exitosamente"
		redirect_to action: 'index'
	end
end
