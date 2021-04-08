class Favourite < ApplicationRecord
  belongs_to :bicycle
  belongs_to :user
  validates_presence_of :user_id, :bicycle_id
end
