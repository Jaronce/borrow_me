class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :status, default: false
end
