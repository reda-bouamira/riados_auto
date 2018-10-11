class Car < ApplicationRecord
  belongs_to :make, dependent: :destroy
  belongs_to :model, dependent: :destroy
end
