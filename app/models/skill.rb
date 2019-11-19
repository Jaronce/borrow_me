class Skill < ApplicationRecord
  has_many :products, through: :product_skill

  validates :name, presence: true, uniqueness: true
end
