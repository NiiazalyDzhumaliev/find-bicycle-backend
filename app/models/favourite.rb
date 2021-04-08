class Favourite < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  validates_presence_of :bicycle_id
end
