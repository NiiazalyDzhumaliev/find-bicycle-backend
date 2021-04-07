class Bicycle < ApplicationRecord
  has_many :favourites
  validates_presence_of :model, :description
end
