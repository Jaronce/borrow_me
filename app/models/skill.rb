class Skill < ApplicationRecord
  has_many :product_skills
  has_many :products, through: :product_skills
  validates :name, presence: true, uniqueness: true
end
