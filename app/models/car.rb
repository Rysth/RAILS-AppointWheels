class Car < ApplicationRecord
  has_many :rentals, dependent: :destroy

  validates :model, presence: true, uniqueness: { case_sensitive: false }
  validates :seats, presence: true
  validates :description, presence: true
  validates :price_per_day, presence: true
  validates :vehicle_type, presence: true
end
