class Shift < ApplicationRecord
  belongs_to :volunteer
  belongs_to :event
  validates :feedback, length: { minimum: 6 }
  validates :volunteer, uniqueness: { scope: :event }
end
