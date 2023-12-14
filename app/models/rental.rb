class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :user

  validates :total_price, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :car_id, presence: true
  validates :user_id, presence: true
end
