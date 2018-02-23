class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  validates :name, :age, :address, :phone_number, :expertise_area, presence: true
  validates :phone_number, uniqueness: true
end
