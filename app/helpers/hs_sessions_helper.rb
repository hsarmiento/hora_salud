module HsSessionsHelper

	def sign_in(hs_account)
		cookies.permanent[:remember_token] = hs_account.remember_token
		self.current_user = hs_account
	end

	def signed_in?
		!current_user.nil?		
	end

	def current_user=(hs_account)
		@current_user = hs_account		
	end

	def current_user
		@current_user ||= HsAccount.find_by_remember_token(cookies[:remember_token])		
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)		
	end
end
