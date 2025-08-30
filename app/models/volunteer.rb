class Volunteer < ApplicationRecord
  has_many :shifts
  validates :name, presence: true, uniqueness: true
end
