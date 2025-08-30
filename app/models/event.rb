class Event < ApplicationRecord
  has_many :shifts, dependent: :destroy
  has_many :volunteers, through: :shifts
  validates :name, :description, presence: true, uniqueness: true
end
