class Neighborhood < ApplicationRecord
  has_many :attractions
  has_many :users
end
