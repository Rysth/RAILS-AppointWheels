class User < ApplicationRecord
  has_many :rentals
  
  validates :name, presence: true
end
