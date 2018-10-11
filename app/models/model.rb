class Model < ApplicationRecord
  has_many :cars
  has_many :makes, through: :cars

  validates :name, presence: true, uniqueness: true
end
