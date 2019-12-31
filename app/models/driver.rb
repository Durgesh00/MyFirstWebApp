# frozen_string_literal: true


class Driver < ApplicationRecord
  
  has_many :ride
  validates :first_name, :last_name, :contact_number, :email, :password, presence: true
  validates :contact_number, uniqueness: true
  validates :contact_number, length: { in: 10..10 }
  validates :contact_number, numericality: { only_integer: true }
  validates :licence_number, length: { in: 15..15 }
  before_save do
    self.first_name = first_name.titleize
    self.last_name = last_name.titleize
  end
end
