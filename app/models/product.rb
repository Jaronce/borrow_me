class Product < ApplicationRecord
  belongs_to :user
  has_many :bookingsbo
  has_many :product_skills, dependent: :destroy

  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
