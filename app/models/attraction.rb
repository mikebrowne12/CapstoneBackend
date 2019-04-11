class Attraction < ApplicationRecord
  belongs_to :neighborhood
  has_many :votes
  has_many :users, through: :votes
end
