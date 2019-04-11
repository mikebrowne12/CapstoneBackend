class User < ApplicationRecord
  has_secure_password
  
  has_many :votes
  belongs_to :neighborhood
  has_many :attractions, through: :votes
end
