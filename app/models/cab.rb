class Cab < ApplicationRecord
  has_many :rides
  
  validates :cab_number,:number_of_seats, presence: true
  validates :cab_number, length: { in: 10..10 }
  validates :number_of_seats, numericality: { only_integer: true }
end
