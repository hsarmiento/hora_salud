class HsClinicsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

	def index
		@hs_clinics = HsClinic.all
	end

	def show
		@hs_clinics = HsClinic.find(params[:id])
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
end
