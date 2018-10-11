class Car < ApplicationRecord
  belongs_to :make
  belongs_to :model

  has_many :vehicles

  validates :make, presence: true
  validates :model, presence: true
  validates :trim, presence: true
end
