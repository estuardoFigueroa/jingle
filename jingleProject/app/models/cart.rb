class Cart < ActiveRecord::Base
  has_many :cart_items
  has_many :jingles, through: :cart_items
  belongs_to :customer
end
