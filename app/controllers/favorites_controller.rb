class FavoritesController < ApplicationController
	def index
		@favorites = Favorite.all
	end

	def create
		redirect_to :back
	end
end