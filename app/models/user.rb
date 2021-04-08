class User < ApplicationRecord
  has_secure_password

  has_many :favourites, dependent: :destroy
  has_many :favourite_bicycles, through: :favourites, source: :bicycle
  validates_presence_of :name, :email, :password_digest
end
