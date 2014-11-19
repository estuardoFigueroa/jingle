class CartItem < ActiveRecord::Base
  belongs_to :jingle
  belongs_to :cart
end
