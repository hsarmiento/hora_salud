class HsAccountsController < ApplicationController

	def show
		@hs_account = HsAccount.find(params[:id])
	end
end
