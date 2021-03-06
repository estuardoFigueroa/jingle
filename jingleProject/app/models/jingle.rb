class Jingle < ActiveRecord::Base
  belongs_to :genre
  has_many :cart_items
  has_many :carts, through: :cart_items

  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  mount_uploader :image, ImageUploader
end
