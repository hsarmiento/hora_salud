class HsClinicsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :edit, :update, :destroy]
	before_filter :admin_user, only: [:new, :edit, :update, :destroy]
	

	def index
		@hs_clinics = HsClinic.all
	end

	def clinics_stgo
		@hs_clinics = HsClinic.paginate(page: params[:page], per_page: 2).where("hs_state_id = 7")
	end

	def show
		@hs_clinic = HsClinic.find(params[:id])
	end

	def new
		@hs_clinic = HsClinic.new
		@hs_states = HsState.all
		@hs_townships = HsTownship.all
	end

	def new_clinic_doctors
		@hs_clinic = HsClinic.new
		@hs_clinic.hs_doctors.build
		@hs_states = HsState.all
		@hs_townships = HsTownship.all
	end

	def create
		@hs_clinic = HsClinic.new(params[:hs_clinic])
		if @hs_clinic.save
			flash[:success] = "La clinica se ha agregado exitosamente"
			if signed_in?				
				redirect_to action: 'index'
			else							
				redirect_to root_url
			end
		else
			if signed_in?
				redirect_to action: 'new'
			else
				redirect_to action: 'new_clinic_doctors'
			end
		end
	end

	def edit
		@hs_clinic = HsClinic.find(params[:id])
		@hs_states = HsState.all
		@hs_townships = HsTownship.all
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
