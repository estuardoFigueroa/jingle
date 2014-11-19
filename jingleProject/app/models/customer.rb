class Customer < ActiveRecord::Base
  belongs_to :province
  has_many :carts
end
