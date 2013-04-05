class StaticPagesController < ApplicationController
	def home
		@states = HsState.all
		@townships = HsTownship.all
	end
end
