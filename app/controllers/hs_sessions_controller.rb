class HsSessionsController < ApplicationController

	def new
	end

	def create
		hs_account = HsAccount.find_by_email(params[:hs_sessions][:email].downcase)
		if hs_account && hs_account.authenticate(params[:hs_sessions][:password])
			sign_in hs_account
			redirect_to hs_account			
		else
			flash.now[:error] = 'El correo y/o password ingresada no es valida'
      		render 'new'			
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
