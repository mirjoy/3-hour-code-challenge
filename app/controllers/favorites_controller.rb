class FavoritesController < ApplicationController
	def index
		@favorites = Item.where(id: Favorite.all.pluck(:item_id))
	end

	def create
		Favorite.create(user_id: 1, item_id: params[:id])
		redirect_to :back
	end

	def destroy
		Favorite.find_by(user_id: 1, item_id: params[:id]).destroy
		redirect_to :back
	end
end