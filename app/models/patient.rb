class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments

  validates :name, :age, :address, :phone_number, presence: true
  validates :phone_number, uniqueness: true
end
