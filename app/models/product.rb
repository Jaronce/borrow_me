class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
