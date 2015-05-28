class Item < ActiveRecord::Base
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :favorites

  def is_a_favorite?
  	!favorites.empty? 
  end
end