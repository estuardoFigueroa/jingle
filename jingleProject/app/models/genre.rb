class Genre < ActiveRecord::Base
has_many :jingles

validates :name, presence: true
end
