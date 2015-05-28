class ItemsController < ApplicationController
  def index
    @items = Item.where(id: 1..10) 
  end

  def show
    @item = Item.find(params[:id].to_i)
  end

end