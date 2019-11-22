class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :product_skills, dependent: :destroy
  has_many :skills, through: :product_skills

  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true

  geocoded_by :city
  after_validation :custom_geocode, if: :will_save_change_to_city?

  def custom_geocode
    self.latitude = 45.5017 + (rand / 100)
    self.longitude = -73.5673 + (rand / 100)
  end


  def fake_address
    address = [
      "2 Cemetery St. Laurentides-Sud",
      "57 Mulberry St. Ponoka",
      "67 Henry Smith Court Taber",
      "8519 Beaver Ridge Ave, QC",
      "860 Sunset Drive Orillia",
      "99 College Road Florenceville",
      "341 South St Paul St. Région",
      "919 South Brook Ave. Kimberley",
      "9806 Old York Street Kings, QC",
      "95 Van Dyke Dr. Tour de la Bours"
    ]
    return address.sample(1).join(" ")
  end
end
