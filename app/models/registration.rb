class Registration < ApplicationRecord

  # Validations
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :club, presence: true
  validates :food, presence: true, numericality: { only_integer: true }

end
