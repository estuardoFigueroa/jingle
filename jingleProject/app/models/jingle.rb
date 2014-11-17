class Jingle < ActiveRecord::Base
belongs_to :genre

validates :name, :price, presence: true
validates :price, numericality: { reater_than_or_equal_to: 0.01}
end
