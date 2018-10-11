class Make < ApplicationRecord
  has_many :cars
  has_many :models, through: :cars

  validates :name, presence: true, uniqueness: true
end