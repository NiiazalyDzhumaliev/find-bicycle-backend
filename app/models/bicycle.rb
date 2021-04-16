class Bicycle < ApplicationRecord
  has_many :favourites, dependent: :destroy
  validates_presence_of :model, :description, :url
end
