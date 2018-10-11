class Vehicle < ApplicationRecord
  belongs_to :car
  belongs_to :transmission

  validates :vin, presence: true, uniqueness: true
  validates :car, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :transmission, presence: true
  validates :price, presence: true
end
