class HsAccountsController < ApplicationController
	before_filter :signed_in_user, only: [:show, :edit, :update]
	before_filter :correct_user, only: [:edit, :update]

	def show
		@hs_account = HsAccount.find(params[:id])
	end

	def edit		
	end

	def update		
		if @hs_account.update_attributes(params[:hs_account])
			flash[:success] = "Perfil actualizado"
			sign_in @hs_account
			redirect_to @hs_account			
		else
			render 'edit'			
		end
	end

	private

		def signed_in_user
			unless signed_in?
				redirect_to signin_url, notice: "Por favor identifiquese"
				store_location
			end			
		end

		def correct_user
			@hs_account = HsAccount.find(params[:id])
			redirect_to(root_path) unless current_user?(@hs_account)
		end
end
