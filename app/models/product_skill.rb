class ProductSkill < ApplicationRecord
  belongs_to :product
  belongs_to :skill

  validates_uniqueness_of :product_id, scope: [:skill_id]
end
