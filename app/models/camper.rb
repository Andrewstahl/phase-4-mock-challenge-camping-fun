class Camper < ApplicationRecord
  has_many :signups
  has_many :activities, through: :signups

  validates :name, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 8, less_than_or_equal_to: 18 }
  
  # For some reason the in: validation doesn't work
  # validates :age, numericality: { in: 10..100 }
end
