class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :product_skills, dependent: :destroy
  has_many :skills, through: :product_skills

  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
